import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tattva/domain/authentication/auth_failure.dart';
import 'package:tattva/domain/authentication/email.dart';
import 'package:tattva/domain/authentication/name.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/domain/authentication/user.dart' as user;
import 'package:tattva/domain/failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, user.User>> signInWithEmailAndPassword(
    Email email,
    Password password,
  );
  Future<Either<AuthFailure, user.User>> createUserWithEmailAndPassword(
    Name name,
    Email email,
    Password password,
  );
  Stream<User?> idTokenChanges();
  User? get currentUser;
  Future<Option<Either<AuthFailure, user.User>>> signInWithGoogle();
  Future<Option<Either<AuthFailure, user.User>>> signInWithFacebook();
  Future<Either<Failure, user.User>> updateProfile({
    required String uid,
    required String displayName,
  });
  Future<Either<Failure, Unit>> sendEmailVerification();
  Future<Option<Either<AuthFailure, user.User>>> getUser();
  Future<Either<AuthFailure, Unit>> resetPassword(Email email);
  Future<Either<AuthFailure, Unit>> signOut();
}
