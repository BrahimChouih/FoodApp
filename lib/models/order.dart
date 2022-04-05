import 'package:foodapp/models/food.dart';

class Order {
  int id;
  Food food;
  int count;

  Order({
    required this.id,
    required this.food,
    this.count = 1,
  });
}
