import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.gray30001,
            width: 0.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onError,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.h),
          ),
          elevation: 0,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 3,
        space: 3,
        color: appTheme.blueGray100,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 14.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 10.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 40.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: appTheme.black900,
          fontSize: 36.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 32.fSize,
          fontFamily: 'Playfair Display',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 24.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 11.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        ),
        labelSmall: TextStyle(
          color: appTheme.gray50,
          fontSize: 8.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 20.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray800,
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFF9CA3AF),
    primaryContainer: Color(0XFF2B2A94),
    secondaryContainer: Color(0XFFA0A0F2),
    errorContainer: Color(0XFF636363),
    onError: Color(0XFFF58282),
    onErrorContainer: Color(0XFF111827),
    onPrimary: Color(0XFF04175B),
    onPrimaryContainer: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber700 => Color(0XFFF59E0B);
// Black
  Color get black900 => Color(0XFF000000);
// BlueGray
  Color get blueGray100 => Color(0XFFD1D5DB);
  Color get blueGray10001 => Color(0XFFD5D5D6);
  Color get blueGray10072 => Color(0X72D9D9D9);
  Color get blueGray400 => Color(0XFF8C8C8C);
  Color get blueGray50 => Color(0XFFEBEDEF);
  Color get blueGray600 => Color(0XFF596273);
  Color get blueGray700 => Color(0XFF4B5563);
  Color get blueGray800 => Color(0XFF374151);
  Color get blueGray900 => Color(0XFF1F2937);
  Color get blueGray90001 => Color(0XFF222B36);
// DeepOrange
  Color get deepOrangeA200 => Color(0XFFF16B32);
// DeepPurple
  Color get deepPurple900 => Color(0XFF1717AF);
// Gray
  Color get gray100 => Color(0XFFF2F2F2);
  Color get gray10001 => Color(0XFFF6F5F8);
  Color get gray10002 => Color(0XFFF5F5F5);
  Color get gray200 => Color(0XFFEEEEEE);
  Color get gray300 => Color(0XFFDDDDDD);
  Color get gray30001 => Color(0XFFE4E4E7);
  Color get gray400 => Color(0XFFC9C9C9);
  Color get gray40001 => Color(0XFFC4C4C4);
  Color get gray40002 => Color(0XFFB5AAAA);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray500 => Color(0XFFA0A0A0);
  Color get gray50001 => Color(0XFF928E8E);
  Color get gray5001 => Color(0XFFF8F8F8);
  Color get gray600 => Color(0XFF6B7280);
  Color get gray60000 => Color(0X00737373);
  Color get gray60001 => Color(0XFF7F7F7F);
  Color get gray700 => Color(0XFF696767);
  Color get gray800 => Color(0XFF4F4F4F);
  Color get gray80001 => Color(0XFF3D3D3D);
  Color get gray80002 => Color(0XFF444242);
  Color get gray900 => Color(0XFF282404);
// Green
  Color get green200 => Color(0XFF9AF19A);
  Color get green50 => Color(0XFFDCFCE7);
  Color get greenA100 => Color(0XFFCAFDCA);
  Color get greenA400 => Color(0XFF2CE15C);
  Color get greenA700 => Color(0XFF22C55E);
  Color get greenA70001 => Color(0XFF07A537);
// Indigo
  Color get indigo100 => Color(0XFFC4C4F7);
  Color get indigo300 => Color(0XFF7C7CED);
// LightBlue
  Color get lightBlueA700 => Color(0XFF007AFF);
// LightGreen
  Color get lightGreen100 => Color(0XFFCEFECB);
// Lime
  Color get lime900 => Color(0XFF9E6607);
// Red
  Color get red500 => Color(0XFFEF4444);
// Teal
  Color get teal700 => Color(0XFF008751);
  Color get teal800 => Color(0XFF077754);
// Yellow
  Color get yellow200 => Color(0XFFF4F5A6);
  Color get yellow700 => Color(0XFFF8BB32);
}
