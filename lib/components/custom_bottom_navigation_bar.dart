import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/controllers/nav_bar_controller.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  NavBarController navBarController = Get.find<NavBarController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: (_) => BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: navBarController.onChange,
        currentIndex: navBarController.currentPageIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: greyColor,
        elevation: 0,
        items: [
          navBarItem(FontAwesomeIcons.home),
          navBarItem(FontAwesomeIcons.heart,
              activeIcon: FontAwesomeIcons.solidHeart),
          navBarItem(FontAwesomeIcons.user,
              activeIcon: FontAwesomeIcons.userAlt),
          navBarItem(FontAwesomeIcons.history),
        ],
      ),
    );
  }

  BottomNavigationBarItem navBarItem(IconData icon, {IconData? activeIcon}) =>
      BottomNavigationBarItem(
        icon: FaIcon(icon),
        activeIcon: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: -3,
              ),
            ],
          ),
          child: FaIcon(activeIcon ?? icon),
        ),
        label: "",
      );
}
