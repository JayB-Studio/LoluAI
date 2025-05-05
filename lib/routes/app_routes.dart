import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/complete_profile_one_screen/complete_profile_one_screen.dart';
import '../presentation/complete_profile_screen/complete_profile_screen.dart';
import '../presentation/iphone_14_15_pro_max_eight_screen/iphone_14_15_pro_max_eight_screen.dart';
import '../presentation/iphone_14_15_pro_max_eleven_screen/iphone_14_15_pro_max_eleven_screen.dart';
import '../presentation/iphone_14_15_pro_max_fifteen_screen/iphone_14_15_pro_max_fifteen_screen.dart';
import '../presentation/iphone_14_15_pro_max_five_screen/iphone_14_15_pro_max_five_screen.dart';
import '../presentation/iphone_14_15_pro_max_four_screen/iphone_14_15_pro_max_four_screen.dart';
import '../presentation/iphone_14_15_pro_max_fourteen_screen/iphone_14_15_pro_max_fourteen_screen.dart';
import '../presentation/iphone_14_15_pro_max_nine_screen/iphone_14_15_pro_max_nine_screen.dart';
import '../presentation/iphone_14_15_pro_max_one_screen/iphone_14_15_pro_max_one_screen.dart';
import '../presentation/iphone_14_15_pro_max_seventeen_screen/iphone_14_15_pro_max_seventeen_screen.dart';
import '../presentation/iphone_14_15_pro_max_six_screen/iphone_14_15_pro_max_six_screen.dart';
import '../presentation/iphone_14_15_pro_max_sixteen_screen/iphone_14_15_pro_max_sixteen_screen.dart';
import '../presentation/iphone_14_15_pro_max_ten_screen/iphone_14_15_pro_max_ten_screen.dart';
import '../presentation/iphone_14_15_pro_max_thirteen_screen/iphone_14_15_pro_max_thirteen_screen.dart';
import '../presentation/iphone_14_15_pro_max_three_screen/iphone_14_15_pro_max_three_screen.dart';
import '../presentation/iphone_14_15_pro_max_twelve_screen/iphone_14_15_pro_max_twelve_screen.dart';
import '../presentation/iphone_14_15_pro_max_two_screen/iphone_14_15_pro_max_two_screen.dart';
import '../presentation/location_screen/location_screen.dart';
import '../presentation/logo_screen/logo_screen.dart';
import '../presentation/time_screen/time_screen.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String iphone1415ProMaxOneScreen =
      '/iphone_14_15_pro_max_one_screen';

  static const String iphone1415ProMaxTwoScreen =
      '/iphone_14_15_pro_max_two_screen';

  static const String iphone1415ProMaxThreeScreen =
      '/iphone_14_15_pro_max_three_screen';

  static const String iphone1415ProMaxFourScreen =
      '/iphone_14_15_pro_max_four_screen';

  static const String iphone1415ProMaxFourteenScreen =
      '/iphone_14_15_pro_max_fourteen_screen';

  static const String iphone1415ProMaxSixScreen =
      '/iphone_14_15_pro_max_six_screen';

  static const String iphone1415ProMaxSixInitialPage =
      '/iphone_14_15_pro_max_six_initial_page';

  static const String iphone1415ProMaxSevenPage =
      '/iphone_14_15_pro_max_seven_page';

  static const String iphone1415ProMaxNineScreen =
      '/iphone_14_15_pro_max_nine_screen';

  static const String iphone1415ProMaxTenScreen =
      '/iphone_14_15_pro_max_ten_screen';

  static const String iphone1415ProMaxElevenScreen =
      '/iphone_14_15_pro_max_eleven_screen';

  static const String iphone1415ProMaxTwelveScreen =
      '/iphone_14_15_pro_max_twelve_screen';

  static const String iphone1415ProMaxFiveScreen =
      '/iphone_14_15_pro_max_five_screen';

  static const String iphone1415ProMaxEightScreen =
      '/iphone_14_15_pro_max_eight_screen';

  static const String iphone1415ProMaxFifteenScreen =
      '/iphone_14_15_pro_max_fifteen_screen';

  static const String timeScreen = '/time_screen';

  static const String locationScreen = '/location_screen';

  static const String iphone1415ProMaxThirteenScreen =
      '/iphone_14_15_pro_max_thirteen_screen';

  static const String iphone1415ProMaxSixteenScreen =
      '/iphone_14_15_pro_max_sixteen_screen';

  static const String completeProfileScreen = '/complete_profile_screen';

  static const String iphone1415ProMaxSeventeenScreen =
      '/iphone_14_15_pro_max_seventeen_screen';

  static const String completeProfileOneScreen = '/complete_profile_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        logoScreen: LogoScreen.builder,
        iphone1415ProMaxOneScreen: Iphone1415ProMaxOneScreen.builder,
        iphone1415ProMaxTwoScreen: Iphone1415ProMaxTwoScreen.builder,
        iphone1415ProMaxThreeScreen: Iphone1415ProMaxThreeScreen.builder,
        iphone1415ProMaxFourScreen: Iphone1415ProMaxFourScreen.builder,
        iphone1415ProMaxFourteenScreen: Iphone1415ProMaxFourteenScreen.builder,
        iphone1415ProMaxSixScreen: Iphone1415ProMaxSixScreen.builder,
        iphone1415ProMaxNineScreen: Iphone1415ProMaxNineScreen.builder,
        iphone1415ProMaxTenScreen: Iphone1415ProMaxTenScreen.builder,
        iphone1415ProMaxElevenScreen: Iphone1415ProMaxElevenScreen.builder,
        iphone1415ProMaxTwelveScreen: Iphone1415ProMaxTwelveScreen.builder,
        iphone1415ProMaxFiveScreen: Iphone1415ProMaxFiveScreen.builder,
        iphone1415ProMaxEightScreen: Iphone1415ProMaxEightScreen.builder,
        iphone1415ProMaxFifteenScreen: Iphone1415ProMaxFifteenScreen.builder,
        timeScreen: TimeScreen.builder,
        locationScreen: LocationScreen.builder,
        iphone1415ProMaxThirteenScreen: Iphone1415ProMaxThirteenScreen.builder,
        iphone1415ProMaxSixteenScreen: Iphone1415ProMaxSixteenScreen.builder,
        iphone1415ProMaxSeventeenScreen:
            Iphone1415ProMaxSeventeenScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Iphone1415ProMaxOneScreen.builder
      };
}
