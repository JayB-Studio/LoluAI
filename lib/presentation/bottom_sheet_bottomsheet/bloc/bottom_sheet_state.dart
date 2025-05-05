part of 'bottom_sheet_bloc.dart';

/// Represents the state of BottomSheet in the application.

// ignore_for_file: must_be_immutable
class BottomSheetState extends Equatable {
  BottomSheetState(
      {this.selectedDropDownValue,
      this.selectedDropDownValue1,
      this.selectedDropDownValue2,
      this.bottomSheetModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  BottomSheetModel? bottomSheetModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        bottomSheetModelObj
      ];
  BottomSheetState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    BottomSheetModel? bottomSheetModelObj,
  }) {
    return BottomSheetState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      bottomSheetModelObj: bottomSheetModelObj ?? this.bottomSheetModelObj,
    );
  }
}
