// ignore_for_file: must_be_immutable

part of 'event_registration_bloc.dart';

class EventRegistrationState extends Equatable {
  EventRegistrationState({this.eventRegistrationModelObj});

  EventRegistrationModel? eventRegistrationModelObj;

  @override
  List<Object?> get props => [
        eventRegistrationModelObj,
      ];
  EventRegistrationState copyWith(
      {EventRegistrationModel? eventRegistrationModelObj}) {
    return EventRegistrationState(
      eventRegistrationModelObj:
          eventRegistrationModelObj ?? this.eventRegistrationModelObj,
    );
  }
}
