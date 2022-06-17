import 'package:flutter/material.dart';
import 'package:foodapp/screens/home_screen.dart';
import 'package:foodapp/theme/primary_theme.dart';
import 'package:get/get.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: primaryTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: HomeScreen(),
      defaultTransition: Transition.rightToLeft,
    );
  }
}
