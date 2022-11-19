import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:zoom_meeting/screens/home_screen.dart';
import 'package:zoom_meeting/utils/shared_widget.dart';

class AuthMethods {
  static final FirebaseAuth auth = FirebaseAuth.instance;
  static final FirebaseFirestore firestore = FirebaseFirestore.instance;

  static User? get user => auth.currentUser;

  static Future<void> signInWithEmailAndPassword(
      BuildContext context, String email, String password) async {
    UserCredential user =
        await auth.signInWithEmailAndPassword(email: email, password: password);

    if (user.user?.uid != null) {
      navigateReplacement(context: context, widget: const HomeScreen());
    }
    if (user.additionalUserInfo!.isNewUser) {
      if (kDebugMode) {
        print('welcome to zoom');
      }
    }
  }

  static void signOut() async {
    auth.signOut();
  }
}
