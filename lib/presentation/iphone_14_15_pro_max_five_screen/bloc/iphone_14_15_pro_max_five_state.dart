part of 'iphone_14_15_pro_max_five_bloc.dart';

/// Represents the state of Iphone1415ProMaxFive in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFiveState extends Equatable {
  Iphone1415ProMaxFiveState({this.iphone1415ProMaxFiveModelObj});

  Iphone1415ProMaxFiveModel? iphone1415ProMaxFiveModelObj;

  @override
  List<Object?> get props => [iphone1415ProMaxFiveModelObj];
  Iphone1415ProMaxFiveState copyWith(
      {Iphone1415ProMaxFiveModel? iphone1415ProMaxFiveModelObj}) {
    return Iphone1415ProMaxFiveState(
      iphone1415ProMaxFiveModelObj:
          iphone1415ProMaxFiveModelObj ?? this.iphone1415ProMaxFiveModelObj,
    );
  }
}
