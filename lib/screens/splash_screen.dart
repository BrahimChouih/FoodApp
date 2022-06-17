import 'package:flutter/material.dart';
import 'package:foodapp/components/custom_button.dart';
import 'package:foodapp/components/logo.dart';
import 'package:foodapp/screens/auth_screen.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../controllers/favorite_controller.dart';
import '../controllers/nav_bar_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FavoriteController());
    Get.put(CartController());
    Get.put(NavBarController());
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
                  "Food For \nEveryone",
                  style: Get.theme.textTheme.headline3?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
                  bottom: 10,
                  child:
                      Image.asset('assets/images/ToyFaces2.png', scale: 1.35),
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
                      onPressed: () => Get.to(() => AuthScreen()),
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
