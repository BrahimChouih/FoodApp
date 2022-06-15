import 'package:flutter/cupertino.dart';
import 'package:foodapp/models/food.dart';
import 'package:get/get.dart';

class FavoriteController extends GetxController {
  List<Food> favorites = [];
  onChange(Food food) {
    String message = '';
    if (!isExist(food.id)) {
      favorites.add(food);
      message = 'This item has been added to favorites';
    } else {
      favorites.removeWhere((element) => element.id == food.id);
      message = 'This item has been removed from favorites';
    }
    Get.snackbar(
      "",
      "",
      titleText: SizedBox(),
      messageText: Center(
        child: Text(message),
      ),
    );
    update();
  }

  bool isExist(int id) =>
      favorites.indexWhere((element) => element.id == id) != -1;
}
