import '../events_screen/widgets/listrectangle1320_item_widget.dart';
import '../events_screen/widgets/listrectangle1321_item_widget.dart';
import 'bloc/events_bloc.dart';
import 'models/events_model.dart';
import 'models/listrectangle1320_item_model.dart';
import 'models/listrectangle1321_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_with/core/app_export.dart';
import 'package:travel_with/widgets/app_bar/appbar_image.dart';
import 'package:travel_with/widgets/app_bar/appbar_title.dart';
import 'package:travel_with/widgets/app_bar/custom_app_bar.dart';

class EventsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<EventsBloc>(
        create: (context) =>
            EventsBloc(EventsState(eventsModelObj: EventsModel()))
              ..add(EventsInitialEvent()),
        child: EventsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 16, top: 12, bottom: 13)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_events".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCalendar,
                      margin:
                          getMargin(left: 16, top: 12, right: 16, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 30, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 16),
                          child: Text("lbl_today_s_events".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Black900)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(266),
                              child: BlocSelector<EventsBloc, EventsState,
                                      EventsModel?>(
                                  selector: (state) => state.eventsModelObj,
                                  builder: (context, eventsModelObj) {
                                    return ListView.separated(
                                        padding: getPadding(left: 16, top: 17),
                                        scrollDirection: Axis.horizontal,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(16));
                                        },
                                        itemCount: eventsModelObj
                                                ?.listrectangle1320ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listrectangle1320ItemModel model =
                                              eventsModelObj
                                                          ?.listrectangle1320ItemList[
                                                      index] ??
                                                  Listrectangle1320ItemModel();
                                          return Listrectangle1320ItemWidget(
                                              model);
                                        });
                                  }))),
                      Padding(
                          padding: getPadding(left: 16, top: 29),
                          child: Text("lbl_upcoming_events".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Black900)),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 18, right: 16),
                              child: BlocSelector<EventsBloc, EventsState,
                                      EventsModel?>(
                                  selector: (state) => state.eventsModelObj,
                                  builder: (context, eventsModelObj) {
                                    return ListView.separated(
                                        physics: NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(17));
                                        },
                                        itemCount: eventsModelObj
                                                ?.listrectangle1321ItemList
                                                .length ??
                                            0,
                                        itemBuilder: (context, index) {
                                          Listrectangle1321ItemModel model =
                                              eventsModelObj
                                                          ?.listrectangle1321ItemList[
                                                      index] ??
                                                  Listrectangle1321ItemModel();
                                          return Listrectangle1321ItemWidget(
                                              model);
                                        });
                                  })))
                    ]))));
  }
}
