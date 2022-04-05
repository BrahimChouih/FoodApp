import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../models/order.dart';
import '../utils/constants.dart';
import 'cart_count_widget.dart';

class CartItemWidget extends StatelessWidget {
  CartItemWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ObjectKey(order),
      onDismissed: (DismissDirection dismissDirection) =>
          cartController.removeOrder(order),
      background: backgroundSwipping(Alignment.centerLeft),
      secondaryBackground: backgroundSwipping(Alignment.centerRight),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Get.width * 0.03,
          vertical: Get.height * 0.01,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: Get.width * 0.1,
              backgroundImage: AssetImage(
                'assets/images/${order.food.image}.png',
              ),
            ),
            SizedBox(width: Get.width * 0.03),
            Column(
              children: [
                Text(
                  order.food.name,
                  style: Get.theme.textTheme.bodyText2,
                ),
                GetBuilder<CartController>(
                  id: cartController.builderIdCount,
                  builder: (_) => Text(
                    '${order.food.price * order.count}\$',
                    style: Get.theme.textTheme.bodyText2?.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            CartCountWidget(order: order),
          ],
        ),
      ),
    );
  }

  Widget backgroundSwipping(AlignmentGeometry alignment) => Container(
        color: Colors.red,
        alignment: alignment,
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.1),
        child: Icon(
          Icons.delete_forever,
          color: Colors.white,
          size: Get.width * 0.08,
        ),
      );
}
