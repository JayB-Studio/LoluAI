import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../bottom_sheet_bottomsheet/bottom_sheet_bottomsheet.dart';
import '../create_bottomsheet/create_bottomsheet.dart';
import '../log_out_bottomsheet/log_out_bottomsheet.dart';
import '../remove1_bottomsheet/remove1_bottomsheet.dart';
import '../remove_bottomsheet/remove_bottomsheet.dart';
import '../user_reminder_dialog/user_reminder_dialog.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Color(0XFFFFFFFF),
          body: SafeArea(
            child: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Text(
                            "App Navigation",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF000000),
                              fontSize: 20.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Check your app's UI from the below demo screens of your app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0XFF888888),
                              fontSize: 16.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Divider(
                          height: 1.h,
                          thickness: 1.h,
                          color: Color(0XFF000000),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Logo",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Two",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Three",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Four",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Fourteen",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxFourteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Six",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxSixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Nine",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxNineScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Ten",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Eleven",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxElevenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Twelve",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxTwelveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Five",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Eight",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxEightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Fifteen",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxFifteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Remove - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                  context, RemoveBottomsheet.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Bottom Sheet - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                  context,
                                  BottomSheetBottomsheet.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Time",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.timeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Location",
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.locationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Log out - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                  context, LogOutBottomsheet.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Create - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                  context, CreateBottomsheet.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Thirteen",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxThirteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "User Reminder - Dialog",
                              onTapScreenTitle: () => onTapDialogTitle(
                                  context, UserReminderDialog.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Sixteen",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxSixteenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Remove - BottomSheet",
                              onTapScreenTitle: () => onTapBottomSheetTitle(
                                  context, Remove1Bottomsheet.builder(context)),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Complete profile",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.completeProfileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "iPhone 14 & 15 Pro Max - Seventeen",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.iphone1415ProMaxSeventeenScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Complete profile One",
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.completeProfileOneScreen),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common click event for bottomsheet
  void onTapBottomSheetTitle(
    BuildContext context,
    Widget className,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return className;
      },
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  /// Common click event for dialog
  void onTapDialogTitle(
    BuildContext context,
    Widget className,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: className,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
