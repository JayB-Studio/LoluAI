import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import 'bloc/iphone_14_15_pro_max_four_bloc.dart';
import 'models/gettingstartedslider_item_model.dart';
import 'models/iphone_14_15_pro_max_four_model.dart';
import 'widgets/gettingstartedslider_item_widget.dart';

class Iphone1415ProMaxFourScreen extends StatelessWidget {
  Iphone1415ProMaxFourScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxFourBloc>(
      create: (context) => Iphone1415ProMaxFourBloc(Iphone1415ProMaxFourState(
        iphone1415ProMaxFourModelObj: Iphone1415ProMaxFourModel(),
      ))
        ..add(Iphone1415ProMaxFourInitialEvent()),
      child: Iphone1415ProMaxFourScreen(),
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
                spacing: 22,
                children: [
                  SizedBox(height: 82.h),
                  Container(
                    height: 760.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(left: 4.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAnimation1741197664937,
                          height: 116.h,
                          width: 118.h,
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(top: 190.h),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "msg_ai_embedded_into".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .displayMediumPlayfairDisplayBluegray900,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgIconsOnBackgroundPrimary,
                          height: 306.h,
                          width: 258.h,
                          margin: EdgeInsets.only(bottom: 150.h),
                        ),
                        Container(
                          height: 446.h,
                          width: 372.h,
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
                        _buildGettingStartedSlider(context)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 2,
                      effect: ScrollingDotsEffect(
                        spacing: 5,
                        activeDotColor: appTheme.greenA700,
                        dotColor: appTheme.gray300,
                        dotHeight: 5.h,
                        dotWidth: 20.h,
                      ),
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



  /*  /// Section Widget
  Widget _buildGettingStartedSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: BlocBuilder<Iphone1415ProMaxFourBloc, Iphone1415ProMaxFourState>(
        builder: (context, state) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 350.h,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                context
                    .read<Iphone1415ProMaxFourBloc>()
                    .add(ChangeSliderIndexEvent(value: index));
              },
            ),
            itemCount: state.iphone1415ProMaxFourModelObj
                ?.gettingstartedsliderItemList.length ??
                0,
            itemBuilder: (context, index, realIndex) {
              GettingstartedsliderItemModel model = state
                  .iphone1415ProMaxFourModelObj
                  ?.gettingstartedsliderItemList[index] ??
                  GettingstartedsliderItemModel();
              return GettingstartedsliderItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }  */

  /// Section Widget
  Widget _buildGettingStartedSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: BlocBuilder<Iphone1415ProMaxFourBloc, Iphone1415ProMaxFourState>(
        builder: (context, state) {
          return CarouselSlider.builder(
            options: CarouselOptions(
              height: 350.h,
              initialPage: 0,
              autoPlay: false,
              viewportFraction: 1.0,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                context.read<Iphone1415ProMaxFourBloc>().add(ChangeSliderIndexEvent(value: index));
              },
            ),
            itemCount: state.iphone1415ProMaxFourModelObj?.gettingstartedsliderItemList.length ?? 0,
            itemBuilder: (context, index, realIndex) {
              GettingstartedsliderItemModel model = state.iphone1415ProMaxFourModelObj?.gettingstartedsliderItemList[index] ?? GettingstartedsliderItemModel();
              return GettingstartedsliderItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
