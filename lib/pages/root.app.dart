import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:bank_app0/pages/dashboard.page.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_splash_screen/flutter_splash_screen.dart';

import '../constants/theme/color.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

// @override
// void initState() {
//   // super.initState();
//   Future.delayed(Duration(seconds: 3), () {
//     FlutterSplashScreen.hide();
//   });
// }

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MColors.white,
        bottomNavigationBar: getTabs(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              pageIndex = 4;
            });
          },
          backgroundColor: MColors.primary,
          child: Icon(AntIcons.creditCardFilled, size: 25),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: getBody(),
      ),
    );
  }

//***********Build for Dashboard TABS */
  Widget getTabs() {
    List<IconData> iconsItems = [
      CommunityMaterialIcons.view_grid,
      CommunityMaterialIcons.comment,
      CommunityMaterialIcons.bell,
      CommunityMaterialIcons.account_circle,
    ];
    return AnimatedBottomNavigationBar(
      icons: iconsItems,
      activeColor: MColors.primary,
      splashColor: MColors.secondary,
      inactiveColor: MColors.black.withOpacity(0.5),
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      rightCornerRadius: 10,
      activeIndex: pageIndex,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }

//******* Pages of the BODY */
  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: [
        DashboardPage(),
        // Center(
        //   child: Text(
        //     "Dashboard Page",
        //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        //   ),
        // ),
        Center(
          child: Text(
            "Chat Page",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Account Page",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Credit Card Page",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

// class SplashDemo extends StatefulWidget {
//   @override
//   _SplashDemoState createState() => _SplashDemoState();
// }

// class _SplashDemoState extends State<SplashDemo> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(Duration(seconds: 3), () {
//       FlutterSplashScreen.hide();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Home Screen")),
//       body: Center(child: Text("Welcome to the App!")),
//     );
//   }
// }
