import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TapController extends GetxController {
  int currentPage = 0;

  void onChange(int page, PageController pageController) {
    pageController.animateToPage(
      page,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
    update();
  }

  void onChangoFromPageView(int page) {
    currentPage = page;
    update();
  }
}
