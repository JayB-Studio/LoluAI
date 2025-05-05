import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../models/remindersection_item_model.dart';

// ignore_for_file: must_be_immutable
class RemindersectionItemWidget extends StatelessWidget {
  RemindersectionItemWidget(this.remindersectionItemModelObj,
      {Key? key, this.onTapSeton})
      : super(
          key: key,
        );

  RemindersectionItemModel remindersectionItemModelObj;

  VoidCallback? onTapSeton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSeton?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 8.h,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrameRed500,
              height: 50.h,
              width: 36.h,
              margin: EdgeInsets.only(
                left: 4.h,
                top: 12.h,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 38.h,
                        width: 170.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                remindersectionItemModelObj.setupmeetwith!,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      remindersectionItemModelObj.time!,
                                      style: CustomTextStyles.bodySmall12,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        remindersectionItemModelObj.timeOne!,
                                        style: CustomTextStyles.bodySmall12,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            remindersectionItemModelObj.march12th2025!,
                            style: CustomTextStyles.bodySmallBluegray800,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              remindersectionItemModelObj.weekday!,
                              style: CustomTextStyles.bodySmallBluegray800,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text(
                              remindersectionItemModelObj.timeTwo!,
                              style: CustomTextStyles.bodySmallBluegray800,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 4.h,
                ),
                child: Column(
                  spacing: 14,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 2.h),
                      child: CustomIconButton(
                        height: 20.h,
                        width: 20.h,
                        padding: EdgeInsets.all(4.h),
                        decoration: IconButtonStyleHelper.fillYellow,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLucideHourglass,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 36.h,
                      width: 36.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillGray,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLucideLink2,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
