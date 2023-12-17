import 'bloc/google_login_bloc.dart';
import 'models/google_login_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_with/core/app_export.dart';
import 'package:travel_with/core/utils/validation_functions.dart';
import 'package:travel_with/widgets/app_bar/appbar_image.dart';
import 'package:travel_with/widgets/app_bar/appbar_title.dart';
import 'package:travel_with/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with/widgets/custom_button.dart';
import 'package:travel_with/widgets/custom_text_form_field.dart';
import 'package:travel_with/domain/googleauth/google_auth_helper.dart';
import 'package:travel_with/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class GoogleLoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<GoogleLoginBloc>(
        create: (context) => GoogleLoginBloc(
            GoogleLoginState(googleLoginModelObj: GoogleLoginModel()))
          ..add(GoogleLoginInitialEvent()),
        child: GoogleLoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(54),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 13, bottom: 17),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_login".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 22, right: 16, bottom: 22),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16),
                          BlocSelector<GoogleLoginBloc, GoogleLoginState,
                                  TextEditingController?>(
                              selector: (state) => state.inputFieldController,
                              builder: (context, inputFieldController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: inputFieldController,
                                    hintText: "msg_enter_your_email".tr,
                                    margin: getMargin(top: 7),
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocBuilder<GoogleLoginBloc, GoogleLoginState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: state.inputFieldOneController,
                                hintText: "lbl_enter_password".tr,
                                margin: getMargin(top: 6),
                                padding: TextFormFieldPadding.PaddingT12,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<GoogleLoginBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: getMargin(all: 12),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant.imgEye
                                                : ImageConstant.imgEye))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(44)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: state.isShowPassword);
                          }),
                          Padding(
                              padding: getPadding(top: 17),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckbox,
                                    height: getSize(20),
                                    width: getSize(20)),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 1, bottom: 1),
                                    child: Text("lbl_remember_me".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium14)),
                                Spacer(),
                                Padding(
                                    padding: getPadding(top: 3),
                                    child: Text("msg_forgot_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtGilroyMedium14BlueA700))
                              ])),
                          CustomButton(
                              height: getVerticalSize(50),
                              width: getHorizontalSize(396),
                              text: "lbl_log_in2".tr,
                              margin: getMargin(top: 25),
                              variant: ButtonVariant.FillBlueA700,
                              padding: ButtonPadding.PaddingAll14,
                              fontStyle: ButtonFontStyle.GilroyMedium16),
                          Padding(
                              padding: getPadding(top: 26),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 10, bottom: 7),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray200)),
                                    Text("msg_or_continue_with".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyRegular16),
                                    Padding(
                                        padding: getPadding(top: 10, bottom: 7),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.blueGray200))
                                  ])),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "msg_sign_in_with_google".tr,
                              margin: getMargin(top: 28),
                              padding: ButtonPadding.PaddingT14,
                              fontStyle: ButtonFontStyle.GilroyMedium16BlueA700,
                              prefixWidget: Container(
                                  margin: getMargin(right: 8),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgGoogle)),
                              onTap: () {
                                onTapSigninwithgoogle(context);
                              }),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "msg_sign_in_with_facebook".tr,
                              margin: getMargin(top: 17),
                              padding: ButtonPadding.PaddingT14,
                              fontStyle: ButtonFontStyle.GilroyMedium16BlueA700,
                              prefixWidget: Container(
                                  padding:
                                      getPadding(left: 9, top: 4, right: 3),
                                  margin: getMargin(right: 8),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blue700,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(3))),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgFacebook)),
                              onTap: () {
                                onTapSigninwithfacebook(context);
                              }),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(top: 28, bottom: 5),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Don’t have an account? ".tr,
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#ff12282a"),
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Gilroy',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: " ",
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#ff12282a"),
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Gilroy',
                                                fontWeight: FontWeight.w700)),
                                        TextSpan(
                                            text: "Sign up.".tr,
                                            style: TextStyle(
                                                color: ColorConstant.fromHex(
                                                    "#ff0061ff"),
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Gilroy',
                                                fontWeight: FontWeight.w700,
                                                decoration:
                                                    TextDecoration.underline))
                                      ]),
                                      textAlign: TextAlign.left)))
                        ])))));
  }

  onTapSigninwithgoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapSigninwithfacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
