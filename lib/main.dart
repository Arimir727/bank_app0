import 'package:flutter/material.dart';
// import 'package:flutter_splash_screen/flutter_splash_screen.dart';
import 'pages/root.app.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: RootApp(),
  ));
}

// ///hide your splash screen
// Future<void> hideScreen() async {
//   Future.delayed(Duration(milliseconds: 1800), () {
//     FlutterSplashScreen.hide();
//   });
// }


