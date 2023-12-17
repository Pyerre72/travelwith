import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_with/presentation/google_login_screen/models/google_login_model.dart';
part 'google_login_event.dart';
part 'google_login_state.dart';

class GoogleLoginBloc extends Bloc<GoogleLoginEvent, GoogleLoginState> {
  GoogleLoginBloc(GoogleLoginState initialState) : super(initialState) {
    on<GoogleLoginInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<GoogleLoginState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    GoogleLoginInitialEvent event,
    Emitter<GoogleLoginState> emit,
  ) async {
    emit(state.copyWith(
        inputFieldController: TextEditingController(),
        inputFieldOneController: TextEditingController(),
        isShowPassword: true));
  }
}
