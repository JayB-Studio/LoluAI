part of 'iphone_14_15_pro_max_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Iphone1415ProMaxFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Iphone1415ProMaxFourEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Iphone1415ProMaxFour widget is first created.
class Iphone1415ProMaxFourInitialEvent extends Iphone1415ProMaxFourEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing slider index

// ignore_for_file: must_be_immutable
class ChangeSliderIndexEvent extends Iphone1415ProMaxFourEvent {
  ChangeSliderIndexEvent({required this.value});

  int value;

  @override
  List<Object?> get props => [value];
}

///Event for changing country code

// ignore_for_file: must_be_immutable
class ChangeCountryEvent extends Iphone1415ProMaxFourEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [value];
}
