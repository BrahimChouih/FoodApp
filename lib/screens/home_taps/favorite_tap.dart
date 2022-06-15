import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodapp/components/custom_app_bar.dart';
import 'package:get/get.dart';

import '../../components/food_item.dart';
import '../../controllers/favorite_controller.dart';

class FavoriteTap extends StatelessWidget {
  FavoriteTap({Key? key}) : super(key: key);
  FavoriteController favoriteController = Get.put(FavoriteController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            CustomAppBar(title: 'Favorite'),
            Expanded(
              child: GetBuilder<FavoriteController>(
                builder: (context) {
                  return favoriteController.favorites.isEmpty
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.heart,
                              color: Colors.grey.withOpacity(0.2),
                              size: Get.width * 0.4,
                            ),
                            SizedBox(height: Get.height * 0.01),
                            Text(
                              'No favorite yet',
                              style: Get.theme.textTheme.bodyText1?.copyWith(
                                fontSize: 21,
                              ),
                            ),
                          ],
                        )
                      : MasonryGridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                          itemCount: favoriteController.favorites.length,
                          itemBuilder: (_, i) {
                            return Container(
                              height: Get.height * 0.35,
                              alignment: i % 2 == 0
                                  ? Alignment.topCenter
                                  : Alignment.bottomCenter,
                              child: FoodItem(
                                food: favoriteController.favorites[i],
                                width: Get.width * 0.4,
                                height: Get.height * 0.28,
                              ),
                            );
                          },
                        );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
