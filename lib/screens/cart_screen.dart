import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/components/cart_count_widget.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:foodapp/components/custom_button.dart';
import 'package:foodapp/controllers/cart_controller.dart';
import 'package:foodapp/models/order.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

import '../components/cart_item_widget.dart';
import 'cart_empty_screen.dart';

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
            GetBuilder<CartController>(
              id: cartController.builderIdMainWidget,
              builder: (_) => Expanded(
                child: cartController.isEmpty
                    ////// cart is empty
                    ? const CartEmptyScreen()
                    ////// there are items in cart
                    : ListView.builder(
                        itemCount: cartController.cartItems.length,
                        itemBuilder: (BuildContext context, int index) =>
                            CartItemWidget(
                          order: cartController.cartItems[index],
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
