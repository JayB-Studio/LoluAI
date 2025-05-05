import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/iphone_14_15_pro_max_one_bloc.dart';
import 'models/iphone_14_15_pro_max_one_model.dart';

class Iphone1415ProMaxOneScreen extends StatelessWidget {
  const Iphone1415ProMaxOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxOneBloc>(
      create: (context) => Iphone1415ProMaxOneBloc(Iphone1415ProMaxOneState(
        iphone1415ProMaxOneModelObj: Iphone1415ProMaxOneModel(),
      ))
        ..add(Iphone1415ProMaxOneInitialEvent()),
      child: Iphone1415ProMaxOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone1415ProMaxOneBloc, Iphone1415ProMaxOneState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary,
          body: SafeArea(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 132.h,
                top: 152.h,
                bottom: 152.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Spacer(
                    flex: 57,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 154.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgVector2Stroke,
                            height: 8.h,
                            width: 24.h,
                            margin: EdgeInsets.only(left: 38.h),
                          ),
                          SizedBox(
                            width: double.maxFinite,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 48.h,
                                  width: 24.h,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 48.h,
                                    margin: EdgeInsets.only(left: 2.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgVectorOnprimarycontainer,
                                          height: 48.h,
                                          width: 48.h,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVector1Stroke,
                                          height: 22.h,
                                          width: 16.h,
                                          alignment: Alignment.centerRight,
                                          margin: EdgeInsets.only(right: 14.h),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgVector,
                                  height: 48.h,
                                  width: 24.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgVectorOnprimarycontainer48x36,
                                  height: 48.h,
                                  width: 36.h,
                                  margin: EdgeInsets.only(left: 6.h),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 42,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconsOnBackground,
                    height: 182.h,
                    width: 154.h,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
