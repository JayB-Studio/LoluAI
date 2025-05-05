import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/bottom_sheet_model.dart';
part 'bottom_sheet_event.dart';
part 'bottom_sheet_state.dart';

/// A bloc that manages the state of a BottomSheet according to the event that is dispatched to it.
class BottomSheetBloc extends Bloc<BottomSheetEvent, BottomSheetState> {
  BottomSheetBloc(BottomSheetState initialState) : super(initialState) {
    on<BottomSheetInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BottomSheetInitialEvent event,
    Emitter<BottomSheetState> emit,
  ) async {
    emit(
      state.copyWith(
        bottomSheetModelObj: state.bottomSheetModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
        ),
      ),
    );
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item A",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item B",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item C",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }
}
