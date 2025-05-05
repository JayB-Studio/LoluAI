import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/app_export.dart';
import '../../iphone_14_15_pro_max_six_screen/iphone_14_15_pro_max_six_screen.dart';
import '../../iphone_14_15_pro_max_three_screen/iphone_14_15_pro_max_three_screen.dart';
import '../models/iphone_14_15_pro_max_two_model.dart';
part 'iphone_14_15_pro_max_two_event.dart';
part 'iphone_14_15_pro_max_two_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxTwo according to the event that is dispatched to it.
class Iphone1415ProMaxTwoBloc
    extends Bloc<Iphone1415ProMaxTwoEvent, Iphone1415ProMaxTwoState> {
  String ? phonenumber;
  Iphone1415ProMaxTwoBloc(Iphone1415ProMaxTwoState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(Iphone1415ProMaxTwoInitialEvent event, Emitter<Iphone1415ProMaxTwoState> emit) async {
    await Future.delayed(const Duration(milliseconds: 3000));

    final prefs = await SharedPreferences.getInstance();
    String? phoneNumber = prefs.getString('registeredPhoneNumber');

    if (phoneNumber != null) {
      // Use the phone number
      checkUserDetails(phoneNumber);
    } else {
      // User is not authenticated, navigate to Iphone1415ProMaxThreeScreen
      NavigatorService.popAndPushNamed(AppRoutes.iphone1415ProMaxThreeScreen);
    }

  }

  Future<void> checkUserDetails(String phoneNumber) async {
    final QuerySnapshot querySnapshot = (await FirebaseFirestore.instance
        .collection('users')
        .where('phone', isEqualTo: phonenumber)
            .get()) as QuerySnapshot<Object?>;

    if (querySnapshot.docs.isNotEmpty) {
      // User details found, navigate to iphone1415ProMaxSixScreen
      NavigatorService.popAndPushNamed(AppRoutes.iphone1415ProMaxSixScreen);
    } else {
      // User is not authenticated, navigate to Iphone1415ProMaxThreeScreen
      NavigatorService.popAndPushNamed(AppRoutes.iphone1415ProMaxThreeScreen);
    }
  }


}
