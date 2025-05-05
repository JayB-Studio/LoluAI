part of 'iphone_14_15_pro_max_five_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProMaxFive widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Iphone1415ProMaxFiveEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Iphone1415ProMaxFive widget is first created.
class Iphone1415ProMaxFiveInitialEvent extends Iphone1415ProMaxFiveEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection

// ignore_for_file: must_be_immutable
class UpdateChipViewEvent extends Iphone1415ProMaxFiveEvent {
  UpdateChipViewEvent({required this.index, this.isSelected});

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [index, isSelected];
}
