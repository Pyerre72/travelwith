// ignore_for_file: must_be_immutable

part of 'google_login_bloc.dart';

class GoogleLoginState extends Equatable {
  GoogleLoginState({
    this.inputFieldController,
    this.inputFieldOneController,
    this.isShowPassword = true,
    this.googleLoginModelObj,
  });

  TextEditingController? inputFieldController;

  TextEditingController? inputFieldOneController;

  GoogleLoginModel? googleLoginModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        inputFieldController,
        inputFieldOneController,
        isShowPassword,
        googleLoginModelObj,
      ];
  GoogleLoginState copyWith({
    TextEditingController? inputFieldController,
    TextEditingController? inputFieldOneController,
    bool? isShowPassword,
    GoogleLoginModel? googleLoginModelObj,
  }) {
    return GoogleLoginState(
      inputFieldController: inputFieldController ?? this.inputFieldController,
      inputFieldOneController:
          inputFieldOneController ?? this.inputFieldOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      googleLoginModelObj: googleLoginModelObj ?? this.googleLoginModelObj,
    );
  }
}
