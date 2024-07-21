import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:revise_fire/features/fire/presentation/pages/sigininscreen.dart';
import 'package:revise_fire/features/fire/presentation/widgets/dialoge.dart';
import 'package:revise_fire/features/fire/presentation/widgets/snackmessenger.dart';
import 'package:revise_fire/features/fire/presentation/widgets/transport.dart';

class Authorization {
  static Sign_in_with_google(BuildContext context) async {
    try {
       GoogleSignInAccount? googleuser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication googleauth = await googleuser!.authentication;
      OAuthCredential googlecred = GoogleAuthProvider.credential(
          accessToken: googleauth.accessToken, idToken: googleauth.idToken);
      return await FirebaseAuth.instance.signInWithCredential(googlecred);
    } on FirebaseException catch (e) {
      Mydialoge.showmessage(context, e.toString());
    }
  }

  static Signinwithemailandpassword(
      BuildContext context, String email, String password, var page) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user!;
      if (user.emailVerified) {
        Transport.navigatereplacement(context, page);
      } else {
        Verifyemail(context);
        Snackmessenger.messagefun(context,
            "email verifications has been sent to ${user.email} now :you can check your email and verify");
      }

      ;
    } on FirebaseException catch (e) {
      Mydialoge.showmessage(context, e.toString());
    }
  }

  static Createuserwithemailandpassword(
      {required BuildContext context,
      required String email,
      required String password}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user!;
      await Verifyemail(context);
      Snackmessenger.messagefun(context,
          "email verifications has been sent to ${user.email} now :you can check your email and verify ");
      Transport.navigatereplacement(context, Sigininscreen());
    } on FirebaseException catch (e) {
      Mydialoge.showmessage(context, e.toString());
    }
  }

  static Sendlinktoresetpassword(BuildContext context, String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
    } on FirebaseException catch (e) {
      Mydialoge.showmessage(context, e.toString());
    }
  }

  static Verifyemail(BuildContext context) async {
    try {
      User user = FirebaseAuth.instance.currentUser!;

      if (user != null && !user.emailVerified) {
        await FirebaseAuth.instance.currentUser!.sendEmailVerification();
      }
    } on FirebaseException catch (e) {
      Mydialoge.showmessage(context, e.toString());
    }
  }
}


 

 