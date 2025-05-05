import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/iphone_14_15_pro_max_six_bloc.dart';
import 'models/iphone_14_15_pro_max_six_initial_model.dart';
import 'models/reminderlist_item_model.dart';
import 'models/remindersection_item_model.dart';
import 'widgets/reminderlist_item_widget.dart';
import 'widgets/remindersection_item_widget.dart';

class Iphone1415ProMaxSixInitialPage extends StatefulWidget {
  const Iphone1415ProMaxSixInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone1415ProMaxSixInitialPageState createState() =>
      Iphone1415ProMaxSixInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxSixBloc>(
      create: (context) => Iphone1415ProMaxSixBloc(Iphone1415ProMaxSixState(
        iphone1415ProMaxSixInitialModelObj: Iphone1415ProMaxSixInitialModel(),
      ))
        ..add(Iphone1415ProMaxSixInitialEvent()),
      child: Iphone1415ProMaxSixInitialPage(),
    );
  }
}

class Iphone1415ProMaxSixInitialPageState
    extends State<Iphone1415ProMaxSixInitialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildAppBar(context),
          ),
          Expanded(
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
                    _buildReminderList(context),
                    SizedBox(height: 26.h),
                    _buildReminderSection(context),
                    SizedBox(height: 60.h),
                    SizedBox(
                      height: 100.h,
                      width: double.maxFinite,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
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
  Widget _buildReminderList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<Iphone1415ProMaxSixBloc, Iphone1415ProMaxSixState,
          Iphone1415ProMaxSixInitialModel?>(
        selector: (state) => state.iphone1415ProMaxSixInitialModelObj,
        builder: (context, iphone1415ProMaxSixInitialModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 14.h,
              );
            },
            itemCount: iphone1415ProMaxSixInitialModelObj
                    ?.reminderlistItemList.length ??
                0,
            itemBuilder: (context, index) {
              ReminderlistItemModel model = iphone1415ProMaxSixInitialModelObj
                      ?.reminderlistItemList[index] ??
                  ReminderlistItemModel();
              return ReminderlistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildReminderSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<Iphone1415ProMaxSixBloc, Iphone1415ProMaxSixState,
          Iphone1415ProMaxSixInitialModel?>(
        selector: (state) => state.iphone1415ProMaxSixInitialModelObj,
        builder: (context, iphone1415ProMaxSixInitialModelObj) {
          return GroupedListView<RemindersectionItemModel, String>(
            shrinkWrap: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            elements:
                iphone1415ProMaxSixInitialModelObj?.remindersectionItemList ??
                    [],
            groupBy: (element) => element.groupBy!,
            sort: false,
            groupSeparatorBuilder: (String value) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 14.h,
                  bottom: 20.h,
                ),
                child: Text(
                  value,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: appTheme.blueGray800,
                  ),
                ),
              );
            },
            itemBuilder: (context, model) {
              int index = iphone1415ProMaxSixInitialModelObj
                      ?.remindersectionItemList
                      .indexOf(model) ??
                  0;
              return RemindersectionItemWidget(
                model,
                onTapSeton: () {
                  onTapSeton(context);
                },
              );
            },
            separator: SizedBox(
              height: 14.h,
            ),
          );
        },
      ),
    );
  }

  /// Navigates to the iphone1415ProMaxNineScreen when the action is triggered.
  onTapSeton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.iphone1415ProMaxNineScreen,
    );
  }
}
