import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../widgets/custom_drop_down.dart';
import 'bloc/bottom_sheet_bloc.dart';
import 'models/bottom_sheet_model.dart'; // ignore_for_file: must_be_immutable

class BottomSheetBottomsheet extends StatelessWidget {
  const BottomSheetBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<BottomSheetBloc>(
      create: (context) => BottomSheetBloc(BottomSheetState(
        bottomSheetModelObj: BottomSheetModel(),
      ))
        ..add(BottomSheetInitialEvent()),
      child: BottomSheetBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.h,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL34,
      ),
      child: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: 122.h,
            child: Divider(),
          ),
          _buildDailyScheduleRow(context),
          _buildWeeklyScheduleRow(context),
          _buildMonthlyScheduleRow(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDailyScheduleRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_daily".tr,
            style: CustomTextStyles.bodyLargeBluegray700,
          ),
          BlocSelector<BottomSheetBloc, BottomSheetState, BottomSheetModel?>(
            selector: (state) => state.bottomSheetModelObj,
            builder: (context, bottomSheetModelObj) {
              return CustomDropDown(
                width: 96.h,
                icon: Container(
                  margin: EdgeInsets.only(left: 2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 24.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 24.h,
                hintText: "lbl_10_00".tr,
                items: bottomSheetModelObj?.dropdownItemList ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWeeklyScheduleRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_weekly_thursday".tr,
            style: CustomTextStyles.bodyLargeBluegray700,
          ),
          BlocSelector<BottomSheetBloc, BottomSheetState, BottomSheetModel?>(
            selector: (state) => state.bottomSheetModelObj,
            builder: (context, bottomSheetModelObj) {
              return CustomDropDown(
                width: 96.h,
                icon: Container(
                  margin: EdgeInsets.only(left: 2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 24.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 24.h,
                hintText: "lbl_10_00".tr,
                items: bottomSheetModelObj?.dropdownItemList1 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMonthlyScheduleRow(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_monthly_on_second".tr,
            style: CustomTextStyles.bodyLargeBluegray700,
          ),
          BlocSelector<BottomSheetBloc, BottomSheetState, BottomSheetModel?>(
            selector: (state) => state.bottomSheetModelObj,
            builder: (context, bottomSheetModelObj) {
              return CustomDropDown(
                width: 96.h,
                icon: Container(
                  margin: EdgeInsets.only(left: 2.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdown,
                    height: 24.h,
                    width: 24.h,
                    fit: BoxFit.contain,
                  ),
                ),
                iconSize: 24.h,
                hintText: "lbl_10_00".tr,
                items: bottomSheetModelObj?.dropdownItemList2 ?? [],
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 10.h,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
