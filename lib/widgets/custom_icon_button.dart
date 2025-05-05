import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow200,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillLightGreen => BoxDecoration(
        color: appTheme.lightGreen100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGrayTL10 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillYellowTL20 => BoxDecoration(
        color: appTheme.yellow200,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillGrayTL6 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillYellowTL6 => BoxDecoration(
        color: appTheme.yellow700,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get fillGrayTL61 => BoxDecoration(
        color: appTheme.gray10001,
        borderRadius: BorderRadius.circular(6.h),
      );
  static BoxDecoration get none => BoxDecoration();
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.decoration,
      this.padding,
      this.onTap,
      this.child})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final BoxDecoration? decoration;

  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: DecoratedBox(
          decoration: decoration ??
              BoxDecoration(
                borderRadius: BorderRadius.circular(14.h),
                border: Border.all(
                  color: appTheme.blueGray400,
                  width: 0.h,
                ),
              ),
          child: IconButton(
            padding: padding ?? EdgeInsets.zero,
            onPressed: onTap,
            icon: child ?? Container(),
          ),
        ),
      );
}
