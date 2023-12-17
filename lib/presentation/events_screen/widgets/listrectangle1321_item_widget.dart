import '../models/listrectangle1321_item_model.dart';
import 'package:flutter/material.dart';
import 'package:travel_with/core/app_export.dart';
import 'package:travel_with/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listrectangle1321ItemWidget extends StatelessWidget {
  Listrectangle1321ItemWidget(this.listrectangle1321ItemModelObj);

  Listrectangle1321ItemModel listrectangle1321ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle132182x821,
            height: getSize(
              82,
            ),
            width: getSize(
              82,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                6,
              ),
            ),
            margin: getMargin(
              bottom: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_music_concert".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroySemiBold18Black900,
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
                          top: 5,
                          bottom: 3,
                        ),
                        child: Text(
                          "msg_march_24_2022".tr,
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
                          left: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
