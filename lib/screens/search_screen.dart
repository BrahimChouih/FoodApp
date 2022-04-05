import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodapp/components/food_item.dart';
import 'package:foodapp/models/food.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            Row(
              children: [
                SizedBox(width: Get.width * 0.05),
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () => Get.back(),
                ),
                SizedBox(width: Get.width * 0.05),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.02),
            Expanded(
              child: Container(
                width: Get.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                  child: Column(
                    children: [
                      SizedBox(height: Get.height * 0.03),
                      Text(
                        'Found ${resualts.length} resualts',
                        style: Get.theme.textTheme.headline5,
                      ),
                      SizedBox(height: Get.height * 0.02),
                      Expanded(
                        child: MasonryGridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                          itemCount: resualts.length,
                          itemBuilder: (_, i) {
                            return Container(
                              height: Get.height * 0.35,
                              alignment: i % 2 == 0
                                  ? Alignment.topCenter
                                  : Alignment.bottomCenter,
                              child: FoodItem(
                                food: resualts[i],
                                width: Get.width * 0.4,
                                height: Get.height * 0.28,
                              ),
                            );
                          },
                        ),
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

  final List<Food> resualts = [
    Food(
      id: 1,
      image: 'food1',
      name: 'Veggie \ntomato mix',
      price: 5.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 2,
      image: 'food2',
      name: 'Veggie \ntomato mix',
      price: 3.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 3,
      image: 'food3',
      name: 'Veggie \ntomato mix',
      price: 8.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 4,
      image: 'food1',
      name: 'Veggie \ntomato mix',
      price: 5.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 5,
      image: 'food2',
      name: 'Veggie \ntomato mix',
      price: 3.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 6,
      image: 'food3',
      name: 'Veggie \ntomato mix',
      price: 8.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 7,
      image: 'food1',
      name: 'Veggie \ntomato mix',
      price: 5.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 8,
      image: 'food2',
      name: 'Veggie \ntomato mix',
      price: 3.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
    Food(
      id: 9,
      image: 'food3',
      name: 'Veggie \ntomato mix',
      price: 8.0,
      deleveryInfo:
          'Delivered between monday aug and thursday 20 from 8pm to 91:32 pm',
      returnPolicy:
          'All our foods are double checked before leaving our stores so by any case you found a broken food please contact our hotline immediately.',
    ),
  ];
}


// Expanded(
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: ListView.builder(
//                                 itemCount: resualts.length ~/ 2,
//                                 primary: false,
//                                 itemBuilder: (_, i) => SizedBox(
//                                   width: Get.width * 0.5,
//                                   height: Get.height * 0.35,
//                                   child: FoodItem(
//                                     food: resualts[i * 2],
//                                     width: Get.width * 0.6,
//                                     height: Get.height * 0.7,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                               child: Container(
//                                 padding:
//                                     EdgeInsets.only(top: Get.height * 0.15),
//                                 child: ListView.builder(
//                                   itemCount: resualts.length ~/ 2,
//                                   primary: false,
//                                   itemBuilder: (_, i) => SizedBox(
//                                     width: Get.width * 0.5,
//                                     height: Get.height * 0.35,
//                                     child: FoodItem(
//                                       food: resualts[(i * 2) + 1],
//                                       width: Get.width * 0.6,
//                                       height: Get.height * 0.7,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),