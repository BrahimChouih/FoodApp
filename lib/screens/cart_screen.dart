import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:foodapp/components/custom_button.dart';
import 'package:foodapp/controllers/cart_controller.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final CartController cartController = Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            CustomAppBar(
              title: 'Cart',
              backButton: true,
            ),
            SizedBox(height: Get.height * 0.02),
            Expanded(
              child: cartController.isEmpty
                  ? Column(
                      children: [
                        const Spacer(),
                        Container(
                          width: Get.width * 0.5,
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(
                            'assets/icons/shopping-cart.svg',
                            color: Colors.grey.withOpacity(0.8),
                            width: Get.width * 0.4,
                          ),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Text(
                          'No oreder yet',
                          style: Get.theme.textTheme.bodyText1?.copyWith(
                            fontSize: 21,
                          ),
                        ),
                        SizedBox(height: Get.height * 0.01),
                        Text(
                          'Hit the orange button down\nbelow to Create an order',
                          style: Get.theme.textTheme.bodyText1?.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        CustomButton(
                          text: 'Start odering',
                          onPressed: () => Get.back(),
                        ),
                        SizedBox(height: Get.height * 0.05),
                      ],
                    )
                  : ListView.builder(
                      itemCount: cartController.cartItems.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: Get.width * 0.03),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                'assets/images/${cartController.cartItems[index].image}.png',
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  cartController.cartItems[index].name,
                                  style: Get.theme.textTheme.bodyText2,
                                ),
                                Text(
                                  cartController.cartItems[index].price
                                          .toString() +
                                      '\$',
                                  style:
                                      Get.theme.textTheme.bodyText2?.copyWith(
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
