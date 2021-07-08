import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/screens/loginScreens/loginScreen.dart';
import 'package:e_app_1/screens/signup/signup_screen.dart';
import 'package:e_app_1/styles/login_screen_style.dart';
import 'package:flutter/material.dart';

import 'mybottombar/my_botttom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.baseBlackColor)
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyBottomBar(),
    );
  }
}

