import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/create_bloc.dart';
import 'models/create_model.dart'; // ignore_for_file: must_be_immutable

class CreateBottomsheet extends StatelessWidget {
  const CreateBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CreateBloc>(
      create: (context) => CreateBloc(CreateState(
        createModelObj: CreateModel(),
      ))
        ..add(CreateInitialEvent()),
      child: CreateBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 74.h,
        top: 46.h,
        bottom: 46.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(
            height: 42.h,
            width: 42.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillYellowTL20,
            child: CustomImageView(
              imagePath: ImageConstant.imgLucideHourglass,
            ),
          ),


          CustomIconButton(
            height: 42.h,
            width: 42.h,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillLightGreen,
            child: CustomImageView(
              imagePath: ImageConstant.imgLucideBell,
            ),
          )


        ],
      ),
    );
  }
}
