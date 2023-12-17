import '../models/listrectangle1320_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_with/core/app_export.dart';
import 'package:travel_with/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listrectangle1320ItemWidget extends StatelessWidget {
  Listrectangle1320ItemWidget(this.listrectangle1320ItemModelObj);

  Listrectangle1320ItemModel listrectangle1320ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle1320160x3001,
                height: getVerticalSize(
                  160,
                ),
                width: getHorizontalSize(
                  300,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    6,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Row(
                  children: [
                    Text(
                      listrectangle1320ItemModelObj.musicconcertTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold18Black900,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 134,
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(
                        "lbl_7_30_pm".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroySemiBold14,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Text(
                  "msg_elgin_st_celina".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium14Bluegray400,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 4,
                        bottom: 4,
                      ),
                      child: Text(
                        listrectangle1320ItemModelObj.k40TicketLeftTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium14Bluegray400,
                      ),
                    ),
                    CustomButton(
                      height: getVerticalSize(
                        26,
                      ),
                      width: getHorizontalSize(
                        88,
                      ),
                      text: "lbl_book_ticket".tr,
                      margin: getMargin(
                        left: 125,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
