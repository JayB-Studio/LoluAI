import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../create_bottomsheet/create_bottomsheet.dart';
import '../iphone_14_15_pro_max_fifteen_screen/iphone_14_15_pro_max_fifteen_screen.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import 'bloc/iphone_14_15_pro_max_five_bloc.dart';
import 'models/chipviewmonday_item_model.dart';
import 'models/iphone_14_15_pro_max_five_model.dart';
import 'widgets/chipviewmonday_item_widget.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFiveScreen extends StatelessWidget {
  Iphone1415ProMaxFiveScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxFiveBloc>(
      create: (context) => Iphone1415ProMaxFiveBloc(Iphone1415ProMaxFiveState(
        iphone1415ProMaxFiveModelObj: Iphone1415ProMaxFiveModel(),
      ))
        ..add(Iphone1415ProMaxFiveInitialEvent()),
      child: Iphone1415ProMaxFiveScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      appBar: _buildAppBar(context),
      body: SafeArea(
        top: false,
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 14.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 38.h),
                      child: Text(
                        "lbl_actions".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  _buildReminderTypeRow(context),
                  SizedBox(height: 14.h),
                  _buildReminderTypeRow1(context),
                  SizedBox(height: 26.h),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 38.h),
                      child: Text(
                        "lbl_reminders2".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 26.h),
                  Text(
                    "msg_create_a_reminder_or".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 52.h),
                  CustomOutlinedButton(
                    height: 46.h,
                    width: 140.h,
                    text: "lbl_create".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 10.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLucideCirclePlusBlueGray900,
                        height: 24.h,
                        width: 24.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlineBlueGray,
                    buttonTextStyle: CustomTextStyles.bodyLargeBluegray700,
                    onPressed: () {
                      onTapCreate(context);
                    },
                  ),
                  SizedBox(height: 224.h),
                  SizedBox(
                    height: 100.h,
                    width: double.maxFinite,
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 92.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSettings,
        margin: EdgeInsets.only(left: 32.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLucideBell,
          height: 26.h,
          width: 26.h,
          margin: EdgeInsets.only(right: 34.h),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildReminderTypeRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.h,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameAmber700,
            height: 48.h,
            width: 38.h,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_complete_your_profile".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  "msg_set_a_reminder_for".tr,
                  style: CustomTextStyles.bodySmallBluegray80012,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: CustomIconButton(
              height: 32.h,
              width: 32.h,
              padding: EdgeInsets.all(2.h),
              decoration: IconButtonStyleHelper.none,
              alignment: Alignment.topCenter,
              child: CustomImageView(
                imagePath: ImageConstant.imgLucideCirclePlus,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildReminderTypeRow1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 20.h,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray50,
            height: 46.h,
            width: 36.h,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_make_sure_to_turn".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray50.copyWith(
                        height: 1.14,
                      ),
                    ),
                    SizedBox(
                      width: double.maxFinite,
                      child: BlocSelector<
                          Iphone1415ProMaxFiveBloc,
                          Iphone1415ProMaxFiveState,
                          Iphone1415ProMaxFiveModel?>(
                        selector: (state) => state.iphone1415ProMaxFiveModelObj,
                        builder: (context, iphone1415ProMaxFiveModelObj) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Wrap(
                              direction: Axis.horizontal,
                              runSpacing: 2.h,
                              spacing: 2.h,
                              children: List<Widget>.generate(
                                iphone1415ProMaxFiveModelObj
                                        ?.chipviewmondayItemList.length ??
                                    0,
                                (index) {
                                  ChipviewmondayItemModel model =
                                      iphone1415ProMaxFiveModelObj
                                              ?.chipviewmondayItemList[index] ??
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
            ),
          ),
          CustomIconButton(
            height: 32.h,
            width: 32.h,
            padding: EdgeInsets.all(2.h),
            decoration: IconButtonStyleHelper.none,
            child: CustomImageView(
              imagePath: ImageConstant.imgLucideCirclePlusGray50,
            ),
          )
        ],
      ),
    );
  }

  /// Displays a bottom sheet widget using the [showModalBottomSheet] method
  /// of the [Scaffold] class with [isScrollControlled] set to true.
  ///
  /// The bottom sheet is built using the [CreateBottomsheet]
  /// class and the [builder] method of the bottom sheet is passed the
  /// [BuildContext] object.


  onTapCreate(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => WillPopScope(
        onWillPop: () async {
          // Handle the back button press here
          // For example, you can show a dialog or minimize the app
          return true; // or return false to prevent dismissing the bottom sheet
        },
        child: CreateBottomsheet.builder(context),
      ),
      isScrollControlled: true,
    );
  }

/*  onTapCreate(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => CreateBottomsheet.builder(context),
        isScrollControlled: true);
  } */
}
