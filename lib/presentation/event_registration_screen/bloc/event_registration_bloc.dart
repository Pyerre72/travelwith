import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_with/presentation/event_registration_screen/models/event_registration_model.dart';
part 'event_registration_event.dart';
part 'event_registration_state.dart';

class EventRegistrationBloc
    extends Bloc<EventRegistrationEvent, EventRegistrationState> {
  EventRegistrationBloc(EventRegistrationState initialState)
      : super(initialState) {
    on<EventRegistrationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EventRegistrationInitialEvent event,
    Emitter<EventRegistrationState> emit,
  ) async {}
}
