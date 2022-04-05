import 'package:flutter/material.dart';
import 'package:foodapp/components/food_item.dart';
import 'package:foodapp/models/food.dart';
import 'package:get/get.dart';

class FoodsScreen extends StatelessWidget {
  FoodsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: foods.length,
      controller: PageController(viewportFraction: 0.7),
      itemBuilder: (_, i) => Center(
        child: FoodItem(
          food: foods[i],
          height: Get.height * 0.4,
          width: Get.width * 0.65,
        ),
      ),
    );
  }

  final List<Food> foods = [
    Food(
      id: 1,
      image: 'food1',
      name: 'Veggie tomato mix',
      price: 5.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 2,
      image: 'food2',
      name: 'Veggie tomato mix',
      price: 3.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 3,
      image: 'food3',
      name: 'Veggie tomato mix',
      price: 8.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 4,
      image: 'food1',
      name: 'Veggie tomato mix',
      price: 5.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 5,
      image: 'food2',
      name: 'Veggie tomato mix',
      price: 3.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 6,
      image: 'food3',
      name: 'Veggie tomato mix',
      price: 8.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 7,
      image: 'food1',
      name: 'Veggie tomato mix',
      price: 5.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 8,
      image: 'food2',
      name: 'Veggie tomato mix',
      price: 3.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 9,
      image: 'food3',
      name: 'Veggie tomato mix',
      price: 8.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
  ];
}
