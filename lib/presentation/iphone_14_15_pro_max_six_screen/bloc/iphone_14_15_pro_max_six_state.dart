part of 'iphone_14_15_pro_max_six_bloc.dart';

/// Represents the state of Iphone1415ProMaxSix in the application.

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixState extends Equatable {
  Iphone1415ProMaxSixState(
      {this.iphone1415ProMaxSixInitialModelObj,
      this.iphone1415ProMaxSixModelObj});

  Iphone1415ProMaxSixModel? iphone1415ProMaxSixModelObj;

  Iphone1415ProMaxSixInitialModel? iphone1415ProMaxSixInitialModelObj;

  @override
  List<Object?> get props =>
      [iphone1415ProMaxSixInitialModelObj, iphone1415ProMaxSixModelObj];
  Iphone1415ProMaxSixState copyWith({
    Iphone1415ProMaxSixInitialModel? iphone1415ProMaxSixInitialModelObj,
    Iphone1415ProMaxSixModel? iphone1415ProMaxSixModelObj,
  }) {
    return Iphone1415ProMaxSixState(
      iphone1415ProMaxSixInitialModelObj: iphone1415ProMaxSixInitialModelObj ??
          this.iphone1415ProMaxSixInitialModelObj,
      iphone1415ProMaxSixModelObj:
          iphone1415ProMaxSixModelObj ?? this.iphone1415ProMaxSixModelObj,
    );
  }
}
