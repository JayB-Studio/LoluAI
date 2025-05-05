import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [remindersection_item_widget] screen.

// ignore_for_file: must_be_immutable
class RemindersectionItemModel extends Equatable {
  RemindersectionItemModel(
      {this.groupBy,
      this.setupmeetwith,
      this.time,
      this.timeOne,
      this.march12th2025,
      this.weekday,
      this.timeTwo,
      this.id}) {
    groupBy = groupBy ?? "";
    setupmeetwith = setupmeetwith ?? "msg_Meet_with".tr;
    time = time ?? "lbl_8_00_pm".tr;
    timeOne = timeOne ?? "msg_two_5_mins_apart".tr;
    march12th2025 = march12th2025 ?? "msg_march_12th_2025".tr;
    weekday = weekday ?? "lbl_wednesday".tr;
    timeTwo = timeTwo ?? "lbl_4_50pm".tr;
    id = id ?? "";
  }

  String? groupBy;

  String? setupmeetwith;

  String? time;

  String? timeOne;

  String? march12th2025;

  String? weekday;

  String? timeTwo;

  String? id;

  RemindersectionItemModel copyWith({
    String? groupBy,
    String? setupmeetwith,
    String? time,
    String? timeOne,
    String? march12th2025,
    String? weekday,
    String? timeTwo,
    String? id,
  }) {
    return RemindersectionItemModel(
      groupBy: groupBy ?? this.groupBy,
      setupmeetwith: setupmeetwith ?? this.setupmeetwith,
      time: time ?? this.time,
      timeOne: timeOne ?? this.timeOne,
      march12th2025: march12th2025 ?? this.march12th2025,
      weekday: weekday ?? this.weekday,
      timeTwo: timeTwo ?? this.timeTwo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        groupBy,
        setupmeetwith,
        time,
        timeOne,
        march12th2025,
        weekday,
        timeTwo,
        id
      ];
}
