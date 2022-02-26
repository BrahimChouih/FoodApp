import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:foodapp/components/custom_tap_bar.dart';
import 'package:foodapp/screens/cart_screen.dart';
import 'package:foodapp/screens/foods_screen.dart';
import 'package:foodapp/screens/search_screen.dart';
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
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: Get.height * 0.02),
            //  App bar
            CustomAppBar(
              padding: Get.width * 0.08,
              leading: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/menu.svg',
                ),
              ),
              trailing: InkWell(
                onTap: () => Get.to(() => CartScreen()),
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
                onTap: () => Get.to(
                  () => SearchScreen(),
                  transition: Transition.upToDown,
                  duration: const Duration(milliseconds: 500),
                ),
                cursorColor: Colors.black,
                keyboardType: TextInputType.none,
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
                taps: const [
                  'Foods',
                  'Drinks',
                  'Snacks',
                  'Soups',
                  'Foods',
                ],
                pages: [
                  FoodsScreen(),
                  FoodsScreen(),
                  FoodsScreen(),
                  FoodsScreen(),
                  FoodsScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
