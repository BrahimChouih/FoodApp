import 'package:flutter/material.dart';
import 'package:foodapp/models/food.dart';
import 'package:foodapp/screens/food_details_screen.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class FoodItem extends StatelessWidget {
  FoodItem({
    Key? key,
    required this.food,
    this.width = 0,
    this.height = 0,
  }) : super(key: key);

  final Food food;
  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    width = width == 0 ? Get.width : width;
    height = height == 0 ? Get.height : height;
    return InkWell(
      onTap: () => Get.to(
        () => FoodDetailsScreen(food: food),
        transition: Transition.upToDown,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: height * 0.2,
            width: width,
            child: Container(
              height: height * 0.8,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: -10,
                      offset: const Offset(0, 8),
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: -10,
                      offset: const Offset(0, 0),
                    ),
                  ]),
              padding: EdgeInsets.only(bottom: height * 0.2),
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    food.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SFProRounded',
                    ),
                  ),
                  SizedBox(height: Get.height * 0.01),
                  Text(
                    '${food.price}\$',
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
          Positioned(
            top: 0,
            width: width,
            child: Center(
              child: Hero(
                tag: 'food image ${food.id}',
                child: Container(
                  // width: width * 0.7,
                  // height: height * 0.2,
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
                      'assets/images/${food.image}.png',
                    ),
                    radius: width * 0.7 / 2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
