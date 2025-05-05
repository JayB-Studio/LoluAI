import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/create_model.dart';
part 'create_event.dart';
part 'create_state.dart';

/// A bloc that manages the state of a Create according to the event that is dispatched to it.
class CreateBloc extends Bloc<CreateEvent, CreateState> {
  CreateBloc(CreateState initialState) : super(initialState) {
    on<CreateInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateInitialEvent event,
    Emitter<CreateState> emit,
  ) async {}
}
