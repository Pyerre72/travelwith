// ignore_for_file: must_be_immutable

part of 'customisable_user_profile_bloc.dart';

@immutable
abstract class CustomisableUserProfileEvent extends Equatable {}

class CustomisableUserProfileInitialEvent extends CustomisableUserProfileEvent {
  @override
  List<Object?> get props => [];
}

///event for change switch
class ChangeSwitchEvent extends CustomisableUserProfileEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
