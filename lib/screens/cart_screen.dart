import 'package:flutter/material.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:foodapp/controllers/cart_controller.dart';
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            CustomAppBar(
              title: 'Cart',
              backButton: true,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
