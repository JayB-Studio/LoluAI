part of 'create_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Create widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CreateEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Create widget is first created.
class CreateInitialEvent extends CreateEvent {
  @override
  List<Object?> get props => [];
}
