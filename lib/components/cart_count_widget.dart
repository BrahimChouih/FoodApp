import 'package:flutter/material.dart';
import 'package:foodapp/controllers/cart_controller.dart';
import 'package:foodapp/models/order.dart';
import 'package:get/get.dart';

class CartCountWidget extends StatelessWidget {
  CartCountWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;
  CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      id: cartController.builderIdCount,
      builder: (_) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          butCount(Icons.add),
          Text(order.count.toString()),
          butCount(Icons.remove),
        ],
      ),
    );
  }

  Widget butCount(IconData iconData) => IconButton(
        icon: Icon(iconData),
        onPressed: () {
          if (iconData == Icons.add) {
            cartController.changeCount(order, order.count + 1);
          } else {
            cartController.changeCount(order, order.count - 1);
          }
        },
      );
}
