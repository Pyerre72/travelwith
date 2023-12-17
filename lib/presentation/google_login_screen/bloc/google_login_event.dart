// ignore_for_file: must_be_immutable

part of 'google_login_bloc.dart';

@immutable
abstract class GoogleLoginEvent extends Equatable {}

class GoogleLoginInitialEvent extends GoogleLoginEvent {
  @override
  List<Object?> get props => [];
}

class FacebookAuthEvent extends GoogleLoginEvent {
  FacebookAuthEvent();

  @override
  List<Object?> get props => [];
}

class GoogleAuthEvent extends GoogleLoginEvent {
  GoogleAuthEvent();

  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends GoogleLoginEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
