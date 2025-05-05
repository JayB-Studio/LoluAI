part of 'bottom_sheet_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BottomSheet widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class BottomSheetEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the BottomSheet widget is first created.
class BottomSheetInitialEvent extends BottomSheetEvent {
  @override
  List<Object?> get props => [];
}
