import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get playfairDisplay {
    return copyWith(
      fontFamily: 'Playfair Display',
    );
  }

  TextStyle get plusJakartaSans {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get plusJakartaSans1 {
    return copyWith(
      fontFamily: 'Plus Jakarta Sans',
    );
  }



}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodyLargeBluegray700 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static TextStyle get bodyLargeBluegray900 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static TextStyle get bodyLargeDeeppurple900 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepPurple900,
      );
  static TextStyle get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
      );
  static TextStyle get bodyLargeOnErrorContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get bodyLargeOnPrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get bodyLargeRed500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red500,
      );
  static TextStyle get bodyMediumGray50 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray50,
      );
  static TextStyle get bodyMediumGray600 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static TextStyle get bodyMediumGray800 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static TextStyle get bodyMediumSFProTextBluegray10001 =>
      theme.textTheme.bodyMedium!.sFProText.copyWith(
        color: appTheme.blueGray10001,
      );
  static TextStyle get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallBluegray800 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
      );
  static TextStyle get bodySmallBluegray80012 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallBluegray800Light =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodySmallBluegray900 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 8.fSize,
      );
  static TextStyle get bodySmallDMSansBlack900 =>
      theme.textTheme.bodySmall!.dMSans.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get bodySmallGray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodySmallGreenA70001 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA70001,
        fontSize: 8.fSize,
      );
  static TextStyle get bodySmallOnPrimaryContainer =>
      theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 8.fSize,
      );
  static TextStyle get bodySmallPlusJakartaSans1Black900 =>
      theme.textTheme.bodySmall!.plusJakartaSans1.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get bodySmallPlusJakartaSans1Black90012 =>
      theme.textTheme.bodySmall!.plusJakartaSans1.copyWith(
        color: appTheme.black900,
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallPlusJakartaSans1Bluegray90001 =>
      theme.textTheme.bodySmall!.plusJakartaSans1.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallPlusJakartaSans1Bluegray9000112 =>
      theme.textTheme.bodySmall!.plusJakartaSans1.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallPlusJakartaSans1ErrorContainer =>
      theme.textTheme.bodySmall!.plusJakartaSans1.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallPlusJakartaSans1Gray700 =>
      theme.textTheme.bodySmall!.plusJakartaSans1.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static TextStyle get bodySmallPlusJakartaSans1OnErrorContainer =>
      theme.textTheme.bodySmall!.plusJakartaSans1.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 12.fSize,
      );
// Display text style
  static TextStyle get displayMediumPlayfairDisplayBluegray900 =>
      theme.textTheme.displayMedium!.playfairDisplay.copyWith(
        color: appTheme.blueGray900,
        fontSize: 48.fSize,
      );
// Label text style
  static TextStyle get labelLargePlusJakartaSans1Black900 =>
      theme.textTheme.labelLarge!.plusJakartaSans1.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargePlusJakartaSans1Bluegray600 =>
      theme.textTheme.labelLarge!.plusJakartaSans1.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargePlusJakartaSans1Bluegray90001 =>
      theme.textTheme.labelLarge!.plusJakartaSans1.copyWith(
        color: appTheme.blueGray90001,
      );
  static TextStyle get labelLargePlusJakartaSans1Bluegray90001_1 =>
      theme.textTheme.labelLarge!.plusJakartaSans1.copyWith(
        color: appTheme.blueGray90001,
      );
  static TextStyle get labelLargePlusJakartaSans1OnErrorContainer =>
      theme.textTheme.labelLarge!.plusJakartaSans1.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get labelLargePlusJakartaSans1OnErrorContainer_1 =>
      theme.textTheme.labelLarge!.plusJakartaSans1.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static TextStyle get labelLargePlusJakartaSans1OnPrimaryContainer =>
      theme.textTheme.labelLarge!.plusJakartaSans1.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get labelLargePlusJakartaSansLightblueA700 =>
      theme.textTheme.labelLarge!.plusJakartaSans.copyWith(
        color: appTheme.lightBlueA700,
      );
  static TextStyle get labelMedium10 => theme.textTheme.labelMedium!.copyWith(
        fontSize: 10.fSize,
      );
  static TextStyle get labelSmallBluegray900 =>
      theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray900,
      );
// Title text style
  static TextStyle get titleMediumDMSansGray80002 =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: appTheme.gray80002,
        fontWeight: FontWeight.w700,
      );


  static TextStyle get labelLargePlusJakartaSans1Blue =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        fontSize: 16,
        fontFamily: 'Plus Jakarta Sans',
        fontWeight: FontWeight.w600,
        color: Colors.blue,
      );
}
