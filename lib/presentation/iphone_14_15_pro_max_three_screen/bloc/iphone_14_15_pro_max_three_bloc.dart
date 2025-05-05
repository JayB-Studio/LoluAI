import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/chipviewmonday_item_model.dart';
import '../models/iphone_14_15_pro_max_three_model.dart';
part 'iphone_14_15_pro_max_three_event.dart';
part 'iphone_14_15_pro_max_three_state.dart';

/// A bloc that manages the state of a Iphone1415ProMaxThree according to the event that is dispatched to it.
class Iphone1415ProMaxThreeBloc
    extends Bloc<Iphone1415ProMaxThreeEvent, Iphone1415ProMaxThreeState> {
  Iphone1415ProMaxThreeBloc(Iphone1415ProMaxThreeState initialState)
      : super(initialState) {
    on<Iphone1415ProMaxThreeInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    Iphone1415ProMaxThreeInitialEvent event,
    Emitter<Iphone1415ProMaxThreeState> emit,
  ) async {
    emit(
      state.copyWith(
        iphone1415ProMaxThreeModelObj:
            state.iphone1415ProMaxThreeModelObj?.copyWith(
          chipviewmondayItemList: fillChipviewmondayItemList(),
        ),
      ),
    );
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<Iphone1415ProMaxThreeState> emit,
  ) {
    List<ChipviewmondayItemModel> newList = List<ChipviewmondayItemModel>.from(
        state.iphone1415ProMaxThreeModelObj!.chipviewmondayItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        iphone1415ProMaxThreeModelObj: state.iphone1415ProMaxThreeModelObj
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
