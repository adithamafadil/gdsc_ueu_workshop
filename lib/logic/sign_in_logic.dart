import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignInUsecase {
  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    User? user;

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication authentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: authentication.accessToken,
        idToken: authentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await firebaseAuth.signInWithCredential(credential);
        user = userCredential.user;
      } on FirebaseException catch (e, stack) {
        log('Firebase Error $e on $stack (${e.code})');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Firebase Error')),
        );
      } on Exception catch (e, stack) {
        log('Unhandled Error $e on $stack');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Something Error')),
        );
      }
    }

    return user;
  }

  static Future<void> signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      await googleSignIn.signOut();
    } on FirebaseException catch (e, stack) {
      log('Firebase Error $e on $stack (${e.code})');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Firebase Error')),
      );
    } on Exception catch (e, stack) {
      log('Unhandled Error $e on $stack');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Something Error')),
      );
    }
  }
}
