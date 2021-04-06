import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tattva/domain/authentication/auth_failure.dart';
import 'package:tattva/domain/authentication/email.dart';
import 'package:tattva/domain/authentication/name.dart';
import 'package:tattva/domain/authentication/password.dart';
import 'package:tattva/domain/authentication/user.dart' as user;

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
  Future<Option<Either<AuthFailure, user.User>>> signInWithGoogle();
  Future<Option<Either<AuthFailure, user.User>>> signInWithFacebook();
  Future<Option<Either<AuthFailure, user.User>>> getUser();
  Future<Either<AuthFailure, Unit>> resetPassword(Email email);
  Future<Either<AuthFailure, Unit>> signOut();
}
