import 'bloc/group_chat_bloc.dart';
import 'models/group_chat_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_with/core/app_export.dart';
import 'package:travel_with/widgets/app_bar/appbar_image.dart';
import 'package:travel_with/widgets/app_bar/custom_app_bar.dart';
import 'package:travel_with/widgets/custom_button.dart';
import 'package:travel_with/widgets/custom_icon_button.dart';

class GroupChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<GroupChatBloc>(
        create: (context) =>
            GroupChatBloc(GroupChatState(groupChatModelObj: GroupChatModel()))
              ..add(GroupChatInitialEvent()),
        child: GroupChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GroupChatBloc, GroupChatState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray50,
              appBar: CustomAppBar(
                  height: getVerticalSize(50),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 13, bottom: 13),
                      onTap: () {
                        onTapArrowleft3(context);
                      }),
                  title: Padding(
                      padding: getPadding(left: 11),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse350x502,
                            height: getSize(50),
                            width: getSize(50),
                            radius:
                                BorderRadius.circular(getHorizontalSize(25))),
                        Padding(
                            padding: getPadding(left: 8, top: 5),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(right: 3),
                                      child: Text("lbl_design_group".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroySemiBold18)),
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("msg_danial_is_typing".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsRegular14))
                                ]))
                      ])),
                  actions: [
                    AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgCall24x24,
                        margin: getMargin(left: 16, top: 13, right: 13)),
                    AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgVideocamera24x24,
                        margin: getMargin(left: 23, top: 13, right: 13)),
                    AppbarImage(
                        height: getSize(24),
                        width: getSize(24),
                        svgPath: ImageConstant.imgOverflowmenu24x24,
                        margin: getMargin(left: 9, top: 13, right: 29))
                  ]),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, top: 15, right: 16, bottom: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Divider(
                            height: getVerticalSize(1),
                            thickness: getVerticalSize(1),
                            color: ColorConstant.blueGray100),
                        Padding(
                            padding: getPadding(top: 23),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgProfileimglarge24x24,
                                      height: getSize(24),
                                      width: getSize(24),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      margin: getMargin(bottom: 52)),
                                  Container(
                                      width: getHorizontalSize(104),
                                      margin: getMargin(left: 4, top: 2),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_landon_mosby".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtGilroyMedium10),
                                            CustomButton(
                                                height: getVerticalSize(38),
                                                width: getHorizontalSize(104),
                                                text: "lbl_hii_team".tr,
                                                margin: getMargin(top: 5),
                                                variant:
                                                    ButtonVariant.FillIndigo50,
                                                shape: ButtonShape
                                                    .CustomBorderBL10,
                                                padding:
                                                    ButtonPadding.PaddingAll9,
                                                fontStyle: ButtonFontStyle
                                                    .GilroyMedium14),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Text(
                                                    "msg_yesterday_2_01pm".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyRegular10))
                                          ]))
                                ])),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: getPadding(top: 21),
                                child: Text("lbl_today".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyRegular14))),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgProfileimglarge22,
                                      height: getSize(24),
                                      width: getSize(24),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      margin: getMargin(bottom: 73)),
                                  Container(
                                      width: getHorizontalSize(209),
                                      margin: getMargin(left: 4, top: 1),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_ali_comer".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtGilroyMedium10),
                                            Container(
                                                margin: getMargin(top: 6),
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 7,
                                                    right: 16,
                                                    bottom: 7),
                                                decoration: AppDecoration
                                                    .fillIndigo50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  177),
                                                          margin:
                                                              getMargin(top: 3),
                                                          child: Text(
                                                              "msg_hii_everyone_dont"
                                                                  .tr,
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyMedium14Black900))
                                                    ])),
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Text("lbl_10_30_am".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyRegular10))
                                          ]))
                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                                padding: getPadding(left: 110, top: 18),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Padding(
                                              padding: getPadding(top: 2),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_rose_j_henry".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium10),
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            getMargin(top: 5),
                                                        color: ColorConstant
                                                            .blue50,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL10),
                                                        child: Container(
                                                            height:
                                                                getSize(258),
                                                            width: getSize(258),
                                                            padding: getPadding(
                                                                all: 4),
                                                            decoration: AppDecoration
                                                                .fillBlue50
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderTL10),
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgRectangle12250x2502,
                                                                      height:
                                                                          getSize(
                                                                              250),
                                                                      width: getSize(
                                                                          250),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              5)),
                                                                      alignment:
                                                                          Alignment
                                                                              .center)
                                                                ]))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_2_01pm".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroyRegular10))
                                                  ]))),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgProfileimglarge23,
                                          height: getSize(24),
                                          width: getSize(24),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(12)),
                                          margin:
                                              getMargin(left: 4, bottom: 272))
                                    ]))),
                        Padding(
                            padding: getPadding(top: 17),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgProfileimglarge24,
                                      height: getSize(24),
                                      width: getSize(24),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12)),
                                      margin: getMargin(bottom: 52)),
                                  Container(
                                      width: getHorizontalSize(72),
                                      margin: getMargin(left: 4, top: 2),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_angelyn_weiner".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtGilroyMedium10),
                                            CustomButton(
                                                height: getVerticalSize(38),
                                                width: getHorizontalSize(51),
                                                text: "lbl_ok".tr,
                                                margin: getMargin(top: 5),
                                                variant:
                                                    ButtonVariant.FillIndigo50,
                                                shape: ButtonShape
                                                    .CustomBorderBL10,
                                                padding:
                                                    ButtonPadding.PaddingAll9,
                                                fontStyle: ButtonFontStyle
                                                    .GilroyMedium14),
                                            Padding(
                                                padding: getPadding(top: 6),
                                                child: Text("lbl_2_30_pm".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyRegular10))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(top: 36),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100))
                      ])),
              bottomNavigationBar: Padding(
                  padding: getPadding(left: 16, right: 16, bottom: 50),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Container(
                                padding: getPadding(
                                    left: 16, top: 12, right: 16, bottom: 12),
                                decoration: AppDecoration.outlineBluegray100
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgUser20x20,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(top: 1, bottom: 1)),
                                      Padding(
                                          padding: getPadding(left: 16, top: 5),
                                          child: Text("msg_your_message".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtGilroyMedium14Bluegray400)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgPlus,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              left: 117, top: 1, bottom: 1)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgMicrophone,
                                          height: getSize(20),
                                          width: getSize(20),
                                          margin: getMargin(
                                              left: 16, top: 1, bottom: 1))
                                    ]))),
                        CustomIconButton(
                            height: 48,
                            width: 48,
                            margin: getMargin(left: 4),
                            child:
                                CustomImageView(svgPath: ImageConstant.imgSend))
                      ]))));
    });
  }

  onTapArrowleft3(BuildContext context) {
    NavigatorService.goBack();
  }
}
