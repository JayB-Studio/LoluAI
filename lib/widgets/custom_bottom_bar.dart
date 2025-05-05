import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum {
  Lucidehouse,
  Lucidesparkles,
  Lucidecircleplusbluegray900,
  Lucidemenu,
  Search
}



// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgLucideHouse,
      activeIcon: ImageConstant.imgLucideHouse,
      type: BottomBarEnum.Lucidehouse,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLucideSparkles,
      activeIcon: ImageConstant.imgLucideSparkles,
      type: BottomBarEnum.Lucidesparkles,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLucideCirclePlusBlueGray900,
      activeIcon: ImageConstant.imgLucideCirclePlusBlueGray900,
      type: BottomBarEnum.Lucidecircleplusbluegray900,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLucideMenu,
      activeIcon: ImageConstant.imgLucideMenu,
      type: BottomBarEnum.Lucidemenu,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      activeIcon: ImageConstant.imgSearch,
      type: BottomBarEnum.Search,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 34.h,
              width: 36.h,
              color: appTheme.blueGray900,
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 34.h,
              width: 36.h,
              color: appTheme.amber700,
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

// ignore_for_file: must_be_immutable
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});

  String icon;

  String activeIcon;

  BottomBarEnum type;
}
/*
class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
} */
