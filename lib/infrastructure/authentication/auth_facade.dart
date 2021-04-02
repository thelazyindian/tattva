import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:tattva/domain/authentication/auth_failure.dart';
import 'package:tattva/domain/authentication/email.dart';
import 'package:tattva/domain/authentication/i_auth_facade.dart';
import 'package:tattva/domain/authentication/name.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/domain/authentication/user.dart' as user;
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
        userRef.set(userMap),
      ]);

      final userModel = user.User.fromJson(userMap).copyWith(uid: _user.uid);
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

      final userModel = user.User.fromJson(userMap).copyWith(uid: _user.uid);
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

      final userModel = user.User.fromJson(userMap).copyWith(uid: _user.uid);
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
          user.User.fromJson(_user.data()!).copyWith(uid: firebaseUser.uid),
        ),
      );
    } on FirebaseException {
      return optionOf(
        left(AuthFailure.serverError()),
      );
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
      ]);
      return right(unit);
    } on FirebaseException {
      return left(AuthFailure.serverError());
    }
  }
}
