import 'package:flutter/material.dart';
import 'package:foodapp/components/custom_bottom_navigation_bar.dart';
import 'package:foodapp/controllers/nav_bar_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  NavBarController navBarController = Get.put(NavBarController());
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