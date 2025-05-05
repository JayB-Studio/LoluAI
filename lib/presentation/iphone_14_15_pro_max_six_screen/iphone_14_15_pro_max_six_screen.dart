import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../iphone_14_15_pro_max_fifteen_screen/iphone_14_15_pro_max_fifteen_screen.dart';
import '../iphone_14_15_pro_max_five_screen/iphone_14_15_pro_max_five_screen.dart';
import '../iphone_14_15_pro_max_seven_page/iphone_14_15_pro_max_seven_page.dart';
import '../log_out_bottomsheet/log_out_bottomsheet.dart';
import 'bloc/iphone_14_15_pro_max_six_bloc.dart';
import 'iphone_14_15_pro_max_six_initial_page.dart';
import 'models/iphone_14_15_pro_max_six_model.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixScreen extends StatelessWidget {
  Iphone1415ProMaxSixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone1415ProMaxSixBloc>(
      create: (context) => Iphone1415ProMaxSixBloc(Iphone1415ProMaxSixState(
        iphone1415ProMaxSixModelObj: Iphone1415ProMaxSixModel(),
      ))
        ..add(Iphone1415ProMaxSixInitialEvent()),
      child: Iphone1415ProMaxSixScreen(),
    );
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showModalBottomSheet(
          context: context,
          builder: (context) => LogOutBottomsheet.builder(context),
        );
        return false;
      },
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SafeArea(
          child: Navigator(
            key: navigatorKey,
            initialRoute: AppRoutes.iphone1415ProMaxSixInitialPage,
            onGenerateRoute: (routeSetting) => PageRouteBuilder(
              pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!),
              transitionDuration: Duration(seconds: 0),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomBar(context),
        ),
      ),
    );
  }


/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: SafeArea(
        child: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.iphone1415ProMaxSixInitialPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.maxFinite,
        child: _buildBottomBar(context),
      ),
    );
  }  */

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Lucidehouse:
        return AppRoutes.iphone1415ProMaxSixInitialPage;
      case BottomBarEnum.Lucidesparkles:
        return AppRoutes.iphone1415ProMaxFifteenScreen;
      case BottomBarEnum.Lucidecircleplusbluegray900:
        return AppRoutes.iphone1415ProMaxFiveScreen;
      case BottomBarEnum.Lucidemenu:
        return AppRoutes.iphone1415ProMaxSevenPage;
      case BottomBarEnum.Search:
        return AppRoutes.completeProfileScreen;
      default:
        return AppRoutes.completeProfileOneScreen;
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone1415ProMaxSixInitialPage:
        return Iphone1415ProMaxSixInitialPage.builder(context);
      case AppRoutes.iphone1415ProMaxFifteenScreen:
        return Iphone1415ProMaxFifteenScreen.builder(context);
      case AppRoutes.iphone1415ProMaxSevenPage:
        return Iphone1415ProMaxSevenPage.builder(context);
      default:
        return Iphone1415ProMaxFiveScreen.builder(context);
    }
  }
}
