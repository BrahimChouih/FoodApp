import 'package:flutter/material.dart';
import 'package:foodapp/controllers/tap_controler.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class CustomTapBar extends StatelessWidget {
  TapController tapController = Get.put(TapController());

  CustomTapBar({
    required this.taps,
    required this.pages,
  });

  List<String> taps;
  List<Widget> pages;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TapController>(
      builder: (_) => Column(
        children: [
          Container(
            width: Get.width,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              itemCount: taps.length + 1,
              itemBuilder: (_, i) => i == 0
                  ? SizedBox(width: Get.width * 0.08)
                  : tapButton(taps[i - 1], i - 1),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: tapController.onChangoFromPageView,
              itemCount: pages.length,
              itemBuilder: (_, i) => pages[i],
            ),
          ),
        ],
      ),
    );
  }

  Widget tapButton(String title, int index) {
    return InkWell(
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        tapController.onChange(index, pageController);
      },
      child: Container(
        width: 80,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: tapController.currentPage == index
                    ? primaryColor
                    : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: tapController.currentPage == index
                  ? primaryColor
                  : Colors.transparent,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
