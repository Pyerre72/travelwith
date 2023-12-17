// ignore_for_file: must_be_immutable

part of 'events_bloc.dart';

@immutable
abstract class EventsEvent extends Equatable {}

class EventsInitialEvent extends EventsEvent {
  @override
  List<Object?> get props => [];
}
