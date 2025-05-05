import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../onboard/register.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../complete_profile_one_screen/complete_profile_one_screen.dart';
import '../../complete_profile_screen/complete_profile_screen.dart';
import '../models/reminderlist_item_model.dart';

// ignore_for_file: must_be_immutable
class ReminderlistItemWidget extends StatelessWidget {
  ReminderlistItemWidget(this.reminderlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ReminderlistItemModel reminderlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
      if (reminderlistItemModelObj.onTap != null) {
        reminderlistItemModelObj.onTap!();
      } else {  //return CompleteProfileScreen(onTap: () {  },);
        //NavigatorService.pushNamed(AppRoutes.completeProfileScreen);
       Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Register()),
         // MaterialPageRoute(builder: (context) => CompleteProfileScreen()),
        );

      }
    },
      child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 22.h,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: reminderlistItemModelObj.image!,
            height: 48.h,
            width: 38.h,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reminderlistItemModelObj.completeyour!,
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  reminderlistItemModelObj.setareminder!,
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
                imagePath: reminderlistItemModelObj.iconbutton!,
              ),
            ),
          )
        ],
      ),
    ), );
  }
}
