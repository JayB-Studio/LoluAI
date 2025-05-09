part of 'iphone_14_15_pro_max_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProMaxThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Iphone1415ProMaxThreeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Iphone1415ProMaxThree widget is first created.
class Iphone1415ProMaxThreeInitialEvent extends Iphone1415ProMaxThreeEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends Iphone1415ProMaxThreeEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
