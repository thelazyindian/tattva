import 'package:audio_service/audio_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/application/audio/audio_bloc.dart';
import 'package:tattva/application/audio_player/audio_player_bloc.dart';
import 'package:tattva/application/authentication/authentication_bloc.dart';
import 'package:tattva/application/blog/blog_bloc.dart';
import 'package:tattva/application/edit_profile/edit_profile_bloc.dart';
import 'package:tattva/application/home_items/home_items_bloc.dart';
import 'package:tattva/application/liked_items/liked_items_bloc.dart';
import 'package:tattva/application/search/search_bloc.dart';
import 'package:tattva/application/wallpaper/wallpaper_bloc.dart';
import 'package:tattva/domain/authentication/auth_failure.dart';
import 'package:tattva/domain/authentication/email.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/authentication/name.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/domain/authentication/user.dart' as user;
import 'package:tattva/domain/failure.dart';
import 'package:tattva/injection.dart';
import 'package:tattva/utils/db.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookAuth;

  AuthFacade(
    this._firebaseAuth,
    this._firestore,
    this._googleSignIn,
    this._facebookAuth,
  );

  @override
  Future<Either<AuthFailure, user.User>> signInWithEmailAndPassword(
    Email email,
    Password password,
  ) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      final _user = userCredential.user!;
      final userRef = _firestore.doc('${DB.USERS}/${_user.uid}');

      final taskFutures = await Future.wait([
        userRef.update({'lastSignInTime': _user.metadata.lastSignInTime}),
        userRef.get(),
      ]);
      final userFirestore = taskFutures[1] as DocumentSnapshot;

      final userModel = user.User.fromJson(userFirestore.data()!).copyWith(
        uid: userFirestore.id,
        lastSignInTime: _user.metadata.lastSignInTime!,
        emailVerified: _user.emailVerified,
      );
      return right(userModel);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' ||
          e.code == 'invalid-email' ||
          e.code == 'user-not-found') {
        return left(AuthFailure.invalidEmailOrPassword());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Stream<User?> idTokenChanges() => _firebaseAuth.idTokenChanges();

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<Either<AuthFailure, user.User>> createUserWithEmailAndPassword(
    Name name,
    Email email,
    Password password,
  ) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      final _user = userCredential.user!;
      final _name = name.value;
      final userRef = _firestore.doc('${DB.USERS}/${_user.uid}');

      final userMap = {
        'displayName': _name,
        'email': _user.email,
        'creationTime': Timestamp.fromDate(_user.metadata.creationTime!),
        'lastSignInTime': Timestamp.fromDate(_user.metadata.lastSignInTime!),
      };
      await Future.wait([
        _user.updateProfile(displayName: _name),
        userRef.set(userMap, SetOptions(merge: true)),
      ]);

      final userModel = user.User.fromJson(userMap).copyWith(
        uid: _user.uid,
        emailVerified: _user.emailVerified,
      );
      return right(userModel);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(AuthFailure.accountAlreadyExists());
      } else if (e.code == 'invalid-email') {
        return left(AuthFailure.invalidEmail());
      } else if (e.code == 'weak-password') {
        return left(AuthFailure.weakPassword());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<Either<AuthFailure, user.User>>> signInWithGoogle() async {
    try {
      final account = await _googleSignIn.signIn();
      if (account == null) {
        return none();
      }

      final authentication = await account.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      final _user = userCredential.user!;
      final userRef = _firestore.doc('${DB.USERS}/${_user.uid}');

      final userSnap = await userRef.get();
      if (userSnap.exists) {
        userRef.update({'lastSignInTime': _user.metadata.lastSignInTime});

        final userModel = user.User.fromJson(userSnap.data()!).copyWith(
          uid: _user.uid,
          lastSignInTime: _user.metadata.lastSignInTime!,
        );
        return optionOf(right(userModel));
      }

      final userMap = {
        'displayName': _user.displayName,
        'email': _user.email,
        'photoURL': _user.photoURL,
        'creationTime': Timestamp.fromDate(_user.metadata.creationTime!),
        'lastSignInTime': Timestamp.fromDate(_user.metadata.lastSignInTime!),
      };
      await userRef.set(userMap);

      final userModel = user.User.fromJson(userMap).copyWith(
        uid: _user.uid,
        emailVerified: _user.emailVerified,
      );
      return optionOf(right(userModel));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        return optionOf(
            left(AuthFailure.accountExistsWithDifferentCredential()));
      } else {
        debugPrint('GOOGLE_FB_AUTH: ${e.code}');
        return optionOf(left(AuthFailure.serverError()));
      }
    } on PlatformException catch (e, trace) {
      debugPrint(
          'GOOGLE_FB_AUTH: ${e.code}\nMSG: ${e.message}\DETA: ${e.details}\TRACE: ${e.stacktrace}');
      debugPrint('GOOGLE_FB_AUTH: $trace');
      return optionOf(left(AuthFailure.serverError()));
    }
  }

  @override
  Future<Option<Either<AuthFailure, user.User>>> signInWithFacebook() async {
    try {
      final loginResult = await _facebookAuth.login();
      final credential = FacebookAuthProvider.credential(loginResult.token);

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);
      final _user = userCredential.user!;
      final userRef = _firestore.doc('${DB.USERS}/${_user.uid}');

      final userSnap = await userRef.get();
      if (userSnap.exists) {
        userRef.update({'lastSignInTime': _user.metadata.lastSignInTime});

        final userModel = user.User.fromJson(userSnap.data()!).copyWith(
          uid: _user.uid,
          lastSignInTime: _user.metadata.lastSignInTime!,
        );
        return optionOf(right(userModel));
      }

      final userMap = {
        'displayName': _user.displayName,
        'email': _user.email,
        'photoURL': _user.photoURL,
        'creationTime': Timestamp.fromDate(_user.metadata.creationTime!),
        'lastSignInTime': Timestamp.fromDate(_user.metadata.lastSignInTime!),
      };
      await userRef.set(userMap);

      final userModel = user.User.fromJson(userMap).copyWith(
        uid: _user.uid,
        emailVerified: _user.emailVerified,
      );
      return optionOf(right(userModel));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'account-exists-with-different-credential') {
        return optionOf(
            left(AuthFailure.accountExistsWithDifferentCredential()));
      } else {
        debugPrint('FACEBOOK_FB_AUTH: ${e.code}');
        return optionOf(left(AuthFailure.serverError()));
      }
    } on FacebookAuthException catch (e) {
      debugPrint('FACEBOOK_AUTH: ${e.errorCode}');
      return none();
    }
  }

  @override
  Future<Either<Failure, user.User>> updateProfile({
    required String uid,
    required String displayName,
  }) async {
    try {
      debugPrint('updateProfile uid $uid');
      debugPrint('updateProfile displayName $displayName');

      final userRef = _firestore.doc('${DB.USERS}/$uid');
      await Future.wait([
        userRef.update({
          'displayName': displayName,
        }),
        _firebaseAuth.currentUser!.updateProfile(displayName: displayName),
      ]);
      final userSnap = await userRef.get();
      final userModel = user.User.fromJson(userSnap.data()!).copyWith(
        uid: uid,
        displayName: displayName,
      );
      return right(userModel);
    } catch (e) {
      debugPrint('updateProfile ERROR $e');
      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> updatePassword({
    required Password newPassword,
  }) async {
    try {
      await _firebaseAuth.currentUser!.updatePassword(newPassword.value);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint('updateProfile ERROR $e');
      if (e.code == 'requires-recent-login') {
        final _user = _firebaseAuth.currentUser!;
        final provider = _user.providerData[1];
        debugPrint('PROVIDER $provider');
        if (provider.providerId == 'google.com' ||
            provider.providerId == 'facebook.com') {
          return reauthenticateAccount(password: Password.pure());
        }
        return left(AuthFailure.requiresRecentLogin());
      }
      return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> reauthenticateAccount({
    required Password password,
  }) async {
    try {
      final _user = _firebaseAuth.currentUser!;
      final provider = _user.providerData[1];
      AuthCredential authCredential;
      if (provider.providerId == 'google.com') {
        final account = await _googleSignIn.signIn();
        if (account == null) {
          return left(AuthFailure.loginFailed());
        }

        final authentication = await account.authentication;
        authCredential = GoogleAuthProvider.credential(
          idToken: authentication.idToken,
          accessToken: authentication.accessToken,
        );
      } else if (provider.providerId == 'facebook.com') {
        final loginResult = await _facebookAuth.login();
        authCredential = FacebookAuthProvider.credential(loginResult.token);
      } else {
        authCredential = EmailAuthProvider.credential(
          email: _user.email!,
          password: password.value,
        );
      }
      await _user.reauthenticateWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint('updateProfile ERROR $e');
      if (e.code == 'user-mismatch' ||
          e.code == 'invalid-email' ||
          e.code == 'user-not-found') {
        return left(AuthFailure.userMismatch());
      } else if (e.code == 'wrong-password') {
        return left(AuthFailure.invalidPassword());
      }
      return left(AuthFailure.serverError());
    } on FacebookAuthException {
      return left(AuthFailure.loginFailed());
    } on PlatformException {
      return left(AuthFailure.loginFailed());
    }
  }

  @override
  Future<Option<Either<AuthFailure, user.User>>> getUser() async {
    final firebaseUser = await _firebaseAuth.authStateChanges().first;

    if (firebaseUser == null) {
      return none();
    }

    try {
      final _user =
          await _firestore.doc('${DB.USERS}/${firebaseUser.uid}').get();
      return optionOf(
        right(
          user.User.fromJson(_user.data()!).copyWith(
            uid: firebaseUser.uid,
            emailVerified: firebaseUser.emailVerified,
          ),
        ),
      );
    } on FirebaseException {
      return optionOf(
        left(AuthFailure.serverError()),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> sendEmailVerification() async {
    try {
      final firebaseUser = await _firebaseAuth.authStateChanges().first;
      await firebaseUser!.sendEmailVerification();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint('ERROR $e');
      return left(Failure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword(Email email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email.value);

      return right(unit);
    } on FirebaseAuthException catch (e) {
      debugPrint(e.code);
      if (e.code == 'user-not-found') {
        return left(AuthFailure.accountDoesnotExist());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
        _facebookAuth.logOut(),
        AudioService.stop(),
        HydratedBloc.storage.clear(),
      ]);
      getIt<AudioBloc>().add(AudioEvent.reset());
      getIt<AudioPlayerBloc>().add(AudioPlayerEvent.reset());
      getIt<AuthenticationBloc>().add(AuthenticationEvent.reset());
      getIt<BlogBloc>().add(BlogEvent.reset());
      getIt<EditProfileBloc>().add(EditProfileEvent.reset());
      getIt<HomeItemsBloc>().add(HomeItemsEvent.reset());
      getIt<LikedItemsBloc>().add(LikedItemsEvent.reset());
      getIt<SearchBloc>().add(SearchEvent.reset());
      getIt<WallpaperBloc>().add(WallpaperEvent.reset());
      return right(unit);
    } on FirebaseException {
      return left(AuthFailure.serverError());
    }
  }
}
