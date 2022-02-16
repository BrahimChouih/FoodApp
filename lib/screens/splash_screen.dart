import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/components/custom_button.dart';
import 'package:foodapp/components/logo.dart';
import 'package:foodapp/screens/auth_screen.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class SplashScrenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // logo and text "Food for everyone"
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width * 0.15,
              vertical: Get.height * 0.1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Logo(),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  "Food For",
                  style: Get.theme.textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Everyone",
                  style: Get.theme.textTheme.headline2?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                // images
                Positioned(
                  right: -70,
                  bottom: 0,
                  child: Image.asset('assets/images/ToyFaces1.png'),
                ),
                Positioned(
                  left: -70,
                  bottom: 0,
                  child: Image.asset('assets/images/ToyFaces2.png'),
                ),
                // gradient
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: Get.width,
                    height: Get.height * 0.4,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          primaryColor,
                        ],
                      ),
                    ),
                  ),
                ),
                // Button "Get started"
                Positioned(
                  width: Get.width,
                  bottom: Get.height * 0.1,
                  child: Center(
                    child: CustomButton(
                      text: 'Get started',
                      color: primaryColor,
                      backgroundColor: Colors.white,
                      onPressed: () => Get.to(AuthScreen()),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
