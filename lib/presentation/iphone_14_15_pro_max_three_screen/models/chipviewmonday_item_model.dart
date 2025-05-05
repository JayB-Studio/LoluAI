import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chipviewmonday_item_widget] screen.

// ignore_for_file: must_be_immutable
class ChipviewmondayItemModel extends Equatable {
  ChipviewmondayItemModel({this.mondayOne, this.isSelected}) {
    mondayOne = mondayOne ?? "lbl_monday".tr;
    isSelected = isSelected ?? false;
  }

  String? mondayOne;

  bool? isSelected;

  ChipviewmondayItemModel copyWith({
    String? mondayOne,
    bool? isSelected,
  }) {
    return ChipviewmondayItemModel(
      mondayOne: mondayOne ?? this.mondayOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [mondayOne, isSelected];
}
