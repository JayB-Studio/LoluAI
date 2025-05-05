import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/chipviewmonday_item_model.dart';

// ignore_for_file: must_be_immutable
class ChipviewmondayItemWidget extends StatelessWidget {
  ChipviewmondayItemWidget(this.chipviewmondayItemModelObj,
      {Key? key, this.onSelectedChipView})
      : super(
          key: key,
        );

  ChipviewmondayItemModel chipviewmondayItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewmondayItemModelObj.mondayOne!,
        style: TextStyle(
          color: appTheme.gray50,
          fontSize: 8.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w700,
        ),
      ),
      selected: (chipviewmondayItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray50.withValues(
        alpha: 0.45,
      ),
      selectedColor: theme.colorScheme.primary,
      side: BorderSide.none,
      shape: (chipviewmondayItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                6.h,
              ))
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                6.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
