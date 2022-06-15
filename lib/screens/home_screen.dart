import 'package:flutter/material.dart';
import 'package:foodapp/components/custom_bottom_navigation_bar.dart';
import 'package:foodapp/controllers/cart_controller.dart';
import 'package:foodapp/controllers/favorite_controller.dart';
import 'package:foodapp/controllers/nav_bar_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  NavBarController navBarController = Get.put(NavBarController());
  CartController cartController = Get.put(CartController());
  FavoriteController favoriteController = Get.put(FavoriteController());

  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<NavBarController>(
        builder: (_) => navBarController.currentPage,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
