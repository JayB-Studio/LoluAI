import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gettingstartedslider_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_four_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFourModel extends Equatable {
  List<GettingstartedsliderItemModel> gettingstartedsliderItemList;

  //late TextEditingController phoneNumberController;
  final TextEditingController phoneNumberController;

  Iphone1415ProMaxFourModel({
    this.gettingstartedsliderItemList = const [],
    TextEditingController? phoneNumberController,
  }) : phoneNumberController = phoneNumberController ?? TextEditingController();


  Iphone1415ProMaxFourModel copyWith({
    List<GettingstartedsliderItemModel>? gettingstartedsliderItemList,
    TextEditingController? phoneNumberController,
  }) {
    return Iphone1415ProMaxFourModel(
      gettingstartedsliderItemList:
          gettingstartedsliderItemList ?? this.gettingstartedsliderItemList,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
    );
  }

  @override
  List<Object?> get props =>
      [gettingstartedsliderItemList, phoneNumberController];
}
