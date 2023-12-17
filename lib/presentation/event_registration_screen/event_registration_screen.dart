import 'bloc/event_registration_bloc.dart';
import 'models/event_registration_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_with/core/app_export.dart';
import 'package:travel_with/widgets/app_bar/appbar_image.dart';
import 'package:travel_with/widgets/app_bar/appbar_title.dart';
import 'package:travel_with/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with/widgets/custom_button.dart';

class EventRegistrationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<EventRegistrationBloc>(
        create: (context) => EventRegistrationBloc(EventRegistrationState(
            eventRegistrationModelObj: EventRegistrationModel()))
          ..add(EventRegistrationInitialEvent()),
        child: EventRegistrationScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventRegistrationBloc, EventRegistrationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(55),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 13, bottom: 18),
                      onTap: () {
                        onTapArrowleft2(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "msg_event_registration".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 15, top: 18, right: 15, bottom: 18),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle1314190x3961,
                            height: getVerticalSize(190),
                            width: getHorizontalSize(396),
                            radius: BorderRadius.circular(getHorizontalSize(6)),
                            margin: getMargin(left: 1)),
                        Padding(
                            padding: getPadding(left: 1, top: 21),
                            child: Text("msg_graphic_design_workshop".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold18)),
                        Padding(
                            padding: getPadding(left: 1, top: 13, right: 108),
                            child: Row(children: [
                              Text("lbl_by_anton_ligon".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium14Bluegray400),
                              Container(
                                  height: getSize(5),
                                  width: getSize(5),
                                  margin: getMargin(left: 8, top: 7, bottom: 5),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.blueGray400,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(2)))),
                              Padding(
                                  padding: getPadding(left: 8),
                                  child: Text("msg_ms_in_design_management".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyMedium14Bluegray400))
                            ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(1))),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("msg_saturday_10_march".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16)),
                        Padding(
                            padding: getPadding(top: 13),
                            child: Text("lbl_next_week".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyRegular14)),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(1))),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Text("lbl_allentown".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16)),
                        Padding(
                            padding: getPadding(top: 15),
                            child: Text("msg_4140_parker_rd".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyRegular14)),
                        Padding(
                            padding: getPadding(top: 17),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(1))),
                        Spacer(),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "lbl_register".tr,
                            margin: getMargin(left: 1, bottom: 61),
                            variant: ButtonVariant.FillBlueA700,
                            padding: ButtonPadding.PaddingAll14,
                            fontStyle: ButtonFontStyle.GilroyMedium16)
                      ]))));
    });
  }

  onTapArrowleft2(BuildContext context) {
    NavigatorService.goBack();
  }
}
