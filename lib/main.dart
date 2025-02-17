import 'package:flutter/material.dart';
import 'pages/root.app.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    debugShowCheckedModeBanner: false,
    home: RootApp(),
  ));
}
