import 'package:flutter/material.dart';
import 'package:foodapp/screens/home_taps/favorite_tap.dart';
import 'package:foodapp/screens/home_taps/history_tap.dart';
import 'package:foodapp/screens/home_taps/home_tap.dart';
import 'package:foodapp/screens/home_taps/profile_tap.dart';
import 'package:get/get.dart';

class NavBarController extends GetxController {
  List<Widget> pages = [
    const HomeTap(),
    FavoriteTap(),
    const ProfileTap(),
    const HistoryTap(),
  ];

  int currentPageIndex = 0;

  Widget get currentPage => pages[currentPageIndex];

  void onChange(int index) {
    currentPageIndex = index;
    update();
  }
}
