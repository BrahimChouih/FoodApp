import 'package:flutter/material.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:foodapp/models/food.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class FoodDetailsScreen extends StatelessWidget {
  const FoodDetailsScreen({
    Key? key,
    required this.food,
  }) : super(key: key);
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.02),
              CustomAppBar(
                backButton: true,
                padding: 0.0,
                trailing: InkWell(
                  child: const Icon(
                    Icons.favorite_outline,
                  ),
                  onTap: () {},
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Center(
                child: Hero(
                  tag: 'food image ${food.id}',
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
                        'assets/images/${food.image}.png',
                      ),
                      radius: Get.width * 0.6 / 2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Center(
                child: Text(
                  food.name,
                  textAlign: TextAlign.center,
                  style: Get.theme.textTheme.headline4,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Center(
                child: Text(
                  '${food.price}\$',
                  textAlign: TextAlign.center,
                  style: Get.theme.textTheme.headline4
                      ?.copyWith(color: primaryColor),
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              const Text(
                'Delivery info',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              Text(
                food.deleveryInfo,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'SFProText',
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              const Text(
                'Return policy',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
              Text(
                food.returnPolicy,
                style: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'SFProText',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}