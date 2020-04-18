import 'package:flutter/material.dart';
import 'package:vpn_app/screens/HomeScreen.dart';
import 'package:vpn_app/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBgColor,
      ),
      home: HomeScreen(),
    );
  }
}
