part of 'create_bloc.dart';

/// Represents the state of Create in the application.

// ignore_for_file: must_be_immutable
class CreateState extends Equatable {
  CreateState({this.createModelObj});

  CreateModel? createModelObj;

  @override
  List<Object?> get props => [createModelObj];
  CreateState copyWith({CreateModel? createModelObj}) {
    return CreateState(
      createModelObj: createModelObj ?? this.createModelObj,
    );
  }
}
