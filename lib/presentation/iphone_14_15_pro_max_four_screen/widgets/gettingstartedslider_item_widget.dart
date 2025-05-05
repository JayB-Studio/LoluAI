import 'package:flutter/material.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import '../../../core/app_export.dart';
import '../../../onboard/auth.dart';
import '../../../onboard/login_or_register.dart';
import '../../../onboard/register.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/authrepo.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../../../widgets/custom_phone_number.dart';
import '../bloc/iphone_14_15_pro_max_four_bloc.dart';
import '../models/gettingstartedslider_item_model.dart';
import 'package:fluttertoast/fluttertoast.dart';


// ignore_for_file: must_be_immutable
class GettingstartedsliderItemWidget extends StatelessWidget {
  GettingstartedsliderItemWidget(this.gettingstartedsliderItemModelObj,
      {Key? key})
      : super(
    key: key,
  );

  GettingstartedsliderItemModel gettingstartedsliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 22.h,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Column(
        spacing: 30,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 8.h,
              right: 12.h,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          gettingstartedsliderItemModelObj.gettingonn!,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          gettingstartedsliderItemModelObj.setupyoulolu!,
                          style: CustomTextStyles.bodySmallBluegray80012,
                        )
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 20.h,
                  width: 20.h,
                )
              ],
            ),
          ),
          _buildEnterPhoneColumn(context),
          CustomOutlinedButton(
            text: "Proceed".tr,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 16.h,
            ),
            buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
            onPressed: () {
              String? phoneNumber = context.read<Iphone1415ProMaxFourBloc>().state.iphone1415ProMaxFourModelObj?.phoneNumberController.text.trim();
              String countryCode = context.read<Iphone1415ProMaxFourBloc>().state.selectedCountry?.phoneCode ?? '1';
              AuthRepo.verifyPhoneNumber(context, '+' + countryCode + phoneNumber!);

             // NavigatorService.popAndPushNamed(AppRoutes.iphone1415ProMaxSixScreen);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );

              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AuthPage()),
              ); */

            },
          ),
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
                gettingstartedsliderItemModelObj.weensureyour!,
                style: CustomTextStyles.bodySmallGray600,
              )
            ],
          ),
          SizedBox(height: 22.h)
        ],
      ),
    );
  }


  /// Section Widget
  Widget _buildEnterPhoneColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Column(
        spacing: 6,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              gettingstartedsliderItemModelObj.enterphone!,
              style: CustomTextStyles.bodySmallBluegray800Light,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: CustomPhoneNumber(
              country: context.read<Iphone1415ProMaxFourBloc>().state.selectedCountry ??
                  CountryPickerUtils.getCountryByPhoneCode('1'),
              controller: context.read<Iphone1415ProMaxFourBloc>().state.iphone1415ProMaxFourModelObj?.phoneNumberController,
              onTap: (Country value) {
                context.read<Iphone1415ProMaxFourBloc>().add(ChangeCountryEvent(value: value));
              },
            ),
          )

        ],
      ),
    );
  }
}





