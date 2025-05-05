import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/iphone_14_15_pro_max_three_bloc.dart';
import 'models/chipviewmonday_item_model.dart';
import 'models/iphone_14_15_pro_max_three_model.dart';
import 'widgets/chipviewmonday_item_widget.dart';

class Iphone1415ProMaxThreeScreen extends StatelessWidget {
  const Iphone1415ProMaxThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxThreeBloc>(
      create: (context) => Iphone1415ProMaxThreeBloc(Iphone1415ProMaxThreeState(
        iphone1415ProMaxThreeModelObj: Iphone1415ProMaxThreeModel(),
      ))
        ..add(Iphone1415ProMaxThreeInitialEvent()),
      child: Iphone1415ProMaxThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 18.h,
                top: 28.h,
                right: 18.h,
              ),
              child: Column(
                children: [
                  SizedBox(height: 78.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      right: 20.h,
                    ),
                    child: Text(
                      "msg_smart_reminders".tr,
                      style: CustomTextStyles
                          .displayMediumPlayfairDisplayBluegray900,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Container(
                    height: 572.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 4.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsOnBackgroundPrimary,
                          height: 306.h,
                          width: 258.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 76.h),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 206.h,
                            child: Text(
                              "msg_lolu_helps_yor_remember".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodyLargeBluegray900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 446.h,
                            width: 372.h,
                            margin: EdgeInsets.only(top: 48.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                222.h,
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0.5),
                                end: Alignment(0.5, 1),
                                colors: [
                                  appTheme.blueGray10072,
                                  appTheme.gray60000
                                ],
                              ),
                            ),
                          ),
                        ),
                        _buildGettingStartedSection(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 34.h),
                  SizedBox(
                    width: 86.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLine1Gray300,
                          height: 5.h,
                          width: 22.h,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 62.h,
                            child: Divider(
                              color: appTheme.greenA700,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGettingStartedSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 30.h,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 6.h,
                    right: 10.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_getting_onn".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                              Text(
                                "msg_setup_you_lolu_account".tr,
                                style: CustomTextStyles.bodySmallBluegray80012,
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomIconButton(
                        height: 24.h,
                        width: 24.h,
                        padding: EdgeInsets.all(2.h),
                        decoration: IconButtonStyleHelper.none,
                        onTap: () {
                          onTapBtnIconbuttonone(context);
                        },
                        child: CustomImageView(
                          imagePath: ImageConstant.imgLucideCircleSlash,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 42.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "msg_select_a_suitable".tr,
                      style: CustomTextStyles.bodySmallBluegray800Light,
                    ),
                  ),
                ),
                SizedBox(height: 6.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 4.h),
                  padding: EdgeInsets.all(14.h),
                  decoration: AppDecoration.fillGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    spacing: 30,
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          NavigatorService.popAndPushNamed(AppRoutes.iphone1415ProMaxFourScreen);
                        },
                        child: Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(right: 8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLucidePhone,
                                height: 16.h,
                                width: 18.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "lbl_use_phone".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                              Spacer(),
                              CustomImageView(
                                imagePath: ImageConstant.imgLucidePlus,
                                height: 16.h,
                                width: 18.h,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 6.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgApplecardApple,
                              height: 20.h,
                              width: 22.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10.h),
                              child: Text(
                                "msg_link_apple_account".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgLucidePlus,
                              height: 16.h,
                              width: 18.h,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 42.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLucideLock,
                      height: 16.h,
                      width: 16.h,
                    ),
                    Text(
                      "msg_we_ensure_your_data".tr,
                      style: CustomTextStyles.bodySmallGray600,
                    )
                  ],
                ),
                SizedBox(height: 14.h)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 16.h,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFrame,
                            height: 48.h,
                            width: 38.h,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                spacing: 6,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "msg_remember_to_buy".tr,
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: BlocSelector<
                                        Iphone1415ProMaxThreeBloc,
                                        Iphone1415ProMaxThreeState,
                                        Iphone1415ProMaxThreeModel?>(
                                      selector: (state) =>
                                          state.iphone1415ProMaxThreeModelObj,
                                      builder: (context,
                                          iphone1415ProMaxThreeModelObj) {
                                        return SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Wrap(
                                            direction: Axis.horizontal,
                                            runSpacing: 5.h,
                                            spacing: 5.h,
                                            children: List<Widget>.generate(
                                              iphone1415ProMaxThreeModelObj
                                                      ?.chipviewmondayItemList
                                                      .length ??
                                                  0,
                                              (index) {
                                                ChipviewmondayItemModel model =
                                                    iphone1415ProMaxThreeModelObj
                                                                ?.chipviewmondayItemList[
                                                            index] ??
                                                        ChipviewmondayItemModel();
                                                return ChipviewmondayItemWidget(
                                                  model,
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    right: 4.h,
                  ),
                  child: CustomIconButton(
                    height: 32.h,
                    width: 32.h,
                    padding: EdgeInsets.all(2.h),
                    decoration: IconButtonStyleHelper.none,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorBlueGray800,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the iphone1415ProMaxTwoScreen when the action is triggered.
  onTapBtnIconbuttonone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxTwoScreen,
    );
  }
}
