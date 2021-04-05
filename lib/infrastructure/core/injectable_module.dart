import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;
  @lazySingleton
  FirebaseFunctions get firebaseFunctions => FirebaseFunctions.instance
    ..useFunctionsEmulator(origin: 'http://100.77.81.92:5001');
  @lazySingleton
  Dio get dio => Dio(BaseOptions(baseUrl: 'http://100.77.81.92:5001'));
}
