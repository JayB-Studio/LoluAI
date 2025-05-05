import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/iphone_14_15_pro_max_six_initial_model.dart';
import '../models/iphone_14_15_pro_max_six_model.dart';
import '../models/reminderlist_item_model.dart';
import '../models/remindersection_item_model.dart';
part 'iphone_14_15_pro_max_six_event.dart';
part 'iphone_14_15_pro_max_six_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxSix according to the event that is dispatched to it.
class Iphone1415ProMaxSixBloc
    extends Bloc<Iphone1415ProMaxSixEvent, Iphone1415ProMaxSixState> {
  Iphone1415ProMaxSixBloc(Iphone1415ProMaxSixState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxSixInitialEvent>(_onInitialize);
  }

  _onInitialize(
    Iphone1415ProMaxSixInitialEvent event,
    Emitter<Iphone1415ProMaxSixState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone1415ProMaxSixInitialModelObj:
            state.iphone1415ProMaxSixInitialModelObj?.copyWith(
          reminderlistItemList: fillReminderlistItemList(),
          remindersectionItemList: fillRemindersectionItemList(),
        ),
      ),
    );
  }

  List<ReminderlistItemModel> fillReminderlistItemList() {
    return [
    /*  ReminderlistItemModel(
          image: ImageConstant.imgFrameAmber700,
          completeyour: "msg_complete_your_profile".tr,
          setareminder: "msg_set_a_reminder_for".tr,
        iconbutton: ImageConstant.imgLucideCirclePlus), */


      ReminderlistItemModel(
          image: ImageConstant.imgFrameGray50,
          completeyour: "msg_make_sure_to_turn".tr,
          iconbutton: ImageConstant.imgLucideCirclePlus)
    ];
  }

  List<RemindersectionItemModel> fillRemindersectionItemList() {
    return [
      RemindersectionItemModel(
        groupBy: "Reminders",
      ),
      RemindersectionItemModel(
        groupBy: "Reminders",
      ),
      RemindersectionItemModel(
        groupBy: "Events",
      )
    ];
  }
}
