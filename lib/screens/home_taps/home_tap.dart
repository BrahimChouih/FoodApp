import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:foodapp/components/custom_tap_bar.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class HomeTap extends StatelessWidget {
  const HomeTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.01),
            //  App bar
            CustomAppBar(
              padding: Get.width * 0.08,
              leading: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                  color: Colors.black38,
                ),
              ),
              trailing: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/shopping-cart.svg',
                ),
              ),
            ),
            // Text "Delicious \nfood for you"
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.08,
                vertical: Get.height * 0.03,
              ),
              child: Text(
                'Delicious \nfood for you',
                style: Get.theme.textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Search TextField
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Get.width * 0.08,
                vertical: Get.height * 0.03,
              ),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.08),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ), // Food Categories
            Expanded(
              child: CustomTapBar(
                taps: const ['Foods', 'Drinks', 'Snacks', 'Soups', 'Foods'],
                pages: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
