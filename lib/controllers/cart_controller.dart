import 'package:flutter/cupertino.dart';
import 'package:foodapp/models/food.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  List<Food> cartItems = [];

  void addItem(Food food) {
    if (!isExist(food)) {
      cartItems.add(food);
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

  bool isExist(Food food) =>
      cartItems.where((item) => item.id == food.id).toList().isNotEmpty;

  bool get isEmpty => cartItems.isEmpty;
}
