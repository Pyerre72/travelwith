// ignore_for_file: must_be_immutable

part of 'customisable_user_profile_bloc.dart';

class CustomisableUserProfileState extends Equatable {
  CustomisableUserProfileState({
    this.group10198Controller,
    this.group10198OneController,
    this.emailController,
    this.isSelectedSwitch = false,
    this.customisableUserProfileModelObj,
  });

  TextEditingController? group10198Controller;

  TextEditingController? group10198OneController;

  TextEditingController? emailController;

  CustomisableUserProfileModel? customisableUserProfileModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        group10198Controller,
        group10198OneController,
        emailController,
        isSelectedSwitch,
        customisableUserProfileModelObj,
      ];
  CustomisableUserProfileState copyWith({
    TextEditingController? group10198Controller,
    TextEditingController? group10198OneController,
    TextEditingController? emailController,
    bool? isSelectedSwitch,
    CustomisableUserProfileModel? customisableUserProfileModelObj,
  }) {
    return CustomisableUserProfileState(
      group10198Controller: group10198Controller ?? this.group10198Controller,
      group10198OneController:
          group10198OneController ?? this.group10198OneController,
      emailController: emailController ?? this.emailController,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      customisableUserProfileModelObj: customisableUserProfileModelObj ??
          this.customisableUserProfileModelObj,
    );
  }
}
