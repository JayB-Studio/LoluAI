import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipviewmonday_item_model.dart';

/// This class defines the variables used in the [iphone_14_15_pro_max_three_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThreeModel extends Equatable {
  Iphone1415ProMaxThreeModel({this.chipviewmondayItemList = const []});

  List<ChipviewmondayItemModel> chipviewmondayItemList;

  Iphone1415ProMaxThreeModel copyWith(
      {List<ChipviewmondayItemModel>? chipviewmondayItemList}) {
    return Iphone1415ProMaxThreeModel(
      chipviewmondayItemList:
          chipviewmondayItemList ?? this.chipviewmondayItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewmondayItemList];
}
