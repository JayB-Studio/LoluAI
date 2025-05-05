import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewmonday_item_model.dart';
import '../models/iphone_14_15_pro_max_five_model.dart';
part 'iphone_14_15_pro_max_five_event.dart';
part 'iphone_14_15_pro_max_five_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxFive according to the event that is dispatched to it.
class Iphone1415ProMaxFiveBloc
    extends Bloc<Iphone1415ProMaxFiveEvent, Iphone1415ProMaxFiveState> {
  Iphone1415ProMaxFiveBloc(Iphone1415ProMaxFiveState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxFiveInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    Iphone1415ProMaxFiveInitialEvent event,
    Emitter<Iphone1415ProMaxFiveState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone1415ProMaxFiveModelObj:
            state.iphone1415ProMaxFiveModelObj?.copyWith(
          chipviewmondayItemList: fillChipviewmondayItemList(),
        ),
      ),
    );
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<Iphone1415ProMaxFiveState> emit,
  ) {
    List<ChipviewmondayItemModel> newList = List<ChipviewmondayItemModel>.from(
        state.iphone1415ProMaxFiveModelObj!.chipviewmondayItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        iphone1415ProMaxFiveModelObj: state.iphone1415ProMaxFiveModelObj
            ?.copyWith(chipviewmondayItemList: newList),
      ),
    );
  }

  List<ChipviewmondayItemModel> fillChipviewmondayItemList() {
    return [
      ChipviewmondayItemModel(mondayOne: "lbl_monday".tr),
      ChipviewmondayItemModel(mondayOne: "lbl_10_12am".tr)
    ];
  }
}
