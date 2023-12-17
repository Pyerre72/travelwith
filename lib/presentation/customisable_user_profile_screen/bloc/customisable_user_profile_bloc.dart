import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:travel_with/presentation/customisable_user_profile_screen/models/customisable_user_profile_model.dart';
part 'customisable_user_profile_event.dart';
part 'customisable_user_profile_state.dart';

class CustomisableUserProfileBloc
    extends Bloc<CustomisableUserProfileEvent, CustomisableUserProfileState> {
  CustomisableUserProfileBloc(CustomisableUserProfileState initialState)
      : super(initialState) {
    on<CustomisableUserProfileInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<CustomisableUserProfileState> emit,
  ) {
    emit(state.copyWith(isSelectedSwitch: event.value));
  }

  _onInitialize(
    CustomisableUserProfileInitialEvent event,
    Emitter<CustomisableUserProfileState> emit,
  ) async {
    emit(state.copyWith(
        group10198Controller: TextEditingController(),
        group10198OneController: TextEditingController(),
        emailController: TextEditingController(),
        isSelectedSwitch: false));
  }
}
