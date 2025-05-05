import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'reminderlist_item_model.dart';
import 'remindersection_item_model.dart';

/// This class is used in the [iphone_14_15_pro_max_six_initial_page] screen.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixInitialModel extends Equatable {
  Iphone1415ProMaxSixInitialModel(
      {this.reminderlistItemList = const [],
      this.remindersOne,
      this.remindersectionItemList = const []}) {
    remindersOne = remindersOne ?? "lbl_reminders2".tr;
  }

  List<ReminderlistItemModel> reminderlistItemList;

  String? remindersOne;

  List<RemindersectionItemModel> remindersectionItemList;

  Iphone1415ProMaxSixInitialModel copyWith({
    List<ReminderlistItemModel>? reminderlistItemList,
    String? remindersOne,
    List<RemindersectionItemModel>? remindersectionItemList,
  }) {
    return Iphone1415ProMaxSixInitialModel(
      reminderlistItemList: reminderlistItemList ?? this.reminderlistItemList,
      remindersOne: remindersOne ?? this.remindersOne,
      remindersectionItemList:
          remindersectionItemList ?? this.remindersectionItemList,
    );
  }

  @override
  List<Object?> get props =>
      [reminderlistItemList, remindersOne, remindersectionItemList];
}
