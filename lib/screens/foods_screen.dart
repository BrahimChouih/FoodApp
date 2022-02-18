import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class FoodsScreen extends StatelessWidget {
  FoodsScreen({Key? key}) : super(key: key);

  final List<Food> foods = [
    Food(
      image: 'food1',
      name: 'Veggie \ntomato mix',
      price: 5.0,
    ),
    Food(
      image: 'food2',
      name: 'Veggie \ntomato mix',
      price: 3.0,
    ),
    Food(
      image: 'food3',
      name: 'Veggie \ntomato mix',
      price: 8.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: foods.length,
      controller: PageController(viewportFraction: 0.7),
      itemBuilder: (_, i) => Center(
        child: SizedBox(
          width: Get.width * 0.7,
          child: Stack(
            children: [
              Positioned(
                top: Get.height * 0.15,
                width: Get.width * 0.7,
                child: Center(
                  child: SizedBox(
                    width: Get.width * 0.6,
                    height: Get.height * 0.3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              blurRadius: 20,
                              spreadRadius: -10,
                              offset: const Offset(0, 8),
                            )
                          ]),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              foods[i].name,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SFProRounded',
                              ),
                            ),
                            Text(
                              '${foods[i].price}\$',
                              style: const TextStyle(
                                fontSize: 17,
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'SFProRounded',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: Get.height * 0.05,
                width: Get.width * 0.7,
                child: Center(
                  child: Container(
                    // width: Get.width * 0.7,
                    // height: Get.height * 0.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: -3,
                          color: Colors.grey.withOpacity(0.8),
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                        'assets/images/${foods[i].image}.png',
                      ),
                      radius: Get.width * 0.4 / 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
