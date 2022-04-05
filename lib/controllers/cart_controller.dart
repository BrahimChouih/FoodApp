import 'package:flutter/cupertino.dart';
import 'package:foodapp/models/food.dart';
import 'package:foodapp/models/order.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final String builderIdCount = 'builderIdCount';
  final String builderIdMainWidget = 'builderIdMainWidget';

  List<Order> cartItems = [];

  void addItem(Food food) {
    Order order = Order(
      id: cartItems.length + 1,
      food: food,
      count: 1,
    );
    int i = 2;
    while (!idIsValidate(order)) {
      order = Order(
        id: cartItems.length + i,
        food: food,
        count: 1,
      );
    }

    if (!isExist(food)) {
      cartItems.add(order);
      update();
    }

    Get.snackbar(
      '',
      'This item has been added',
      titleText: const SizedBox(),
      messageText: Text(
        'This item has been added',
        textAlign: TextAlign.center,
        style: Get.theme.textTheme.bodyText2,
      ),
    );
  }

  void removeOrder(Order order) {
    cartItems.removeWhere((element) => element.id == order.id);
    update([builderIdMainWidget]);
  }

  void changeCount(Order order, int count) {
    if (count == 0) {
      order.count = 1;
    } else {
      order.count = count;
    }
    update([builderIdCount]);
  }

  bool isExist(Food food) =>
      cartItems.where((item) => item.food.id == food.id).toList().isNotEmpty;

  bool idIsValidate(Order order) =>
      cartItems.where((item) => item.id == order.id).toList().isEmpty;

  bool get isEmpty => cartItems.isEmpty;
}
