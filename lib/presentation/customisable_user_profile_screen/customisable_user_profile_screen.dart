import 'bloc/customisable_user_profile_bloc.dart';
import 'models/customisable_user_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_with/core/app_export.dart';
import 'package:travel_with/core/utils/validation_functions.dart';
import 'package:travel_with/widgets/app_bar/appbar_image.dart';
import 'package:travel_with/widgets/app_bar/appbar_title.dart';
import 'package:travel_with/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with/widgets/custom_icon_button.dart';
import 'package:travel_with/widgets/custom_switch.dart';
import 'package:travel_with/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CustomisableUserProfileScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<CustomisableUserProfileBloc>(
        create: (context) => CustomisableUserProfileBloc(
            CustomisableUserProfileState(
                customisableUserProfileModelObj:
                    CustomisableUserProfileModel()))
          ..add(CustomisableUserProfileInitialEvent()),
        child: CustomisableUserProfileScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 12),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_profile".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 15, top: 25, right: 15, bottom: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: getSize(150),
                                  width: getSize(150),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse5150x150,
                                            height: getSize(150),
                                            width: getSize(150),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(75)),
                                            alignment: Alignment.center),
                                        CustomIconButton(
                                            height: 30,
                                            width: 30,
                                            margin: getMargin(top: 5, right: 2),
                                            variant:
                                                IconButtonVariant.FillBlueA700,
                                            shape:
                                                IconButtonShape.CircleBorder15,
                                            padding:
                                                IconButtonPadding.PaddingAll3,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgForward))
                                      ]))),
                          Padding(
                              padding: getPadding(left: 2, top: 26),
                              child: Text("lbl_first_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<
                                  CustomisableUserProfileBloc,
                                  CustomisableUserProfileState,
                                  TextEditingController?>(
                              selector: (state) => state.group10198Controller,
                              builder: (context, group10198Controller) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198Controller,
                                    hintText: "lbl_michelle".tr,
                                    margin: getMargin(left: 2, top: 8));
                              }),
                          Padding(
                              padding: getPadding(left: 2, top: 19),
                              child: Text("lbl_last_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocSelector<
                                  CustomisableUserProfileBloc,
                                  CustomisableUserProfileState,
                                  TextEditingController?>(
                              selector: (state) =>
                                  state.group10198OneController,
                              builder: (context, group10198OneController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: group10198OneController,
                                    hintText: "lbl_rock".tr,
                                    margin: getMargin(left: 2, top: 7));
                              }),
                          Padding(
                              padding: getPadding(left: 2, top: 18),
                              child: Text("lbl_email_id".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtGilroyMedium16Bluegray800)),
                          BlocSelector<
                                  CustomisableUserProfileBloc,
                                  CustomisableUserProfileState,
                                  TextEditingController?>(
                              selector: (state) => state.emailController,
                              builder: (context, emailController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: emailController,
                                    hintText: "msg_michellerock_gmail_com".tr,
                                    margin: getMargin(left: 2, top: 8),
                                    textInputAction: TextInputAction.done,
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
                              padding: getPadding(left: 3, top: 26),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text(
                                            "msg_renew_automatically".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtGilroySemiBold18)),
                                    BlocSelector<
                                            CustomisableUserProfileBloc,
                                            CustomisableUserProfileState,
                                            bool?>(
                                        selector: (state) =>
                                            state.isSelectedSwitch,
                                        builder: (context, isSelectedSwitch) {
                                          return CustomSwitch(
                                              value: isSelectedSwitch,
                                              onChanged: (value) {
                                                context
                                                    .read<
                                                        CustomisableUserProfileBloc>()
                                                    .add(ChangeSwitchEvent(
                                                        value: value));
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(left: 3, top: 27, right: 1),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("msg_user_subscription".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtGilroySemiBold18)),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightBlueGray600,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1))
                                  ])),
                          Padding(
                              padding: getPadding(
                                  left: 3, top: 27, right: 1, bottom: 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("lbl_settings".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtGilroySemiBold18)),
                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowrightBlueGray600,
                                        height: getSize(24),
                                        width: getSize(24),
                                        margin: getMargin(bottom: 1))
                                  ]))
                        ])))));
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
