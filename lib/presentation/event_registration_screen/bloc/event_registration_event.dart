// ignore_for_file: must_be_immutable

part of 'event_registration_bloc.dart';

@immutable
abstract class EventRegistrationEvent extends Equatable {}

class EventRegistrationInitialEvent extends EventRegistrationEvent {
  @override
  List<Object?> get props => [];
}
