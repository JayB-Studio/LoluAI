import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/iphone_14_15_pro_max_five_screen/iphone_14_15_pro_max_five_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../presentation/iphone_14_15_pro_max_four_screen/bloc/iphone_14_15_pro_max_four_bloc.dart';
import 'OtpScreen.dart';


class AuthRepo {
  static String verId = "";
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static void verifyPhoneNumber(BuildContext context, String number) async {
    await _firebaseAuth.verifyPhoneNumber(

      phoneNumber: '$number',
      verificationCompleted: (PhoneAuthCredential credential) {
        signInWithPhoneNumber(
            context, credential.verificationId!, credential.smsCode!);
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          print('The provided phone number is not valid.');
        }
      },
      codeSent: (String verificationId, int? resendToken) {
        verId = verificationId;
        print("verficationId $verId");
       /* Navigator.push(context, MaterialPageRoute(builder: (ctx){
          return const OtpScreen();
        })); */
        print("code sent");
        context.read<Iphone1415ProMaxFourBloc>().add(ChangeSliderIndexEvent(value: 1));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  static void logoutApp(BuildContext context) async {
    await _firebaseAuth.signOut();
    // ignore: use_build_context_synchronously
    /*Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => const LoginPage(),
      ),
    ); */
  }

  static void submitOtp(BuildContext context, String otp) {
    signInWithPhoneNumber(context, verId, otp);
  }

  static Future<void> signInWithPhoneNumber(
      BuildContext context, String verificationId, String smsCode) async {
    try {
      final AuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCode,
      );
      final UserCredential userCredential =
      await _firebaseAuth.signInWithCredential(credential);
      print(userCredential.user!.phoneNumber);
      print("Login successful");
      // TODO: Navigate to home page
    /*  Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const HomePage();
      }));  */
    } catch (e) {
      print('Error signing in with phone number: $e');
    }
  }
}