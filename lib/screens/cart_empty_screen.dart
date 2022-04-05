import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../components/custom_button.dart';

class CartEmptyScreen extends StatelessWidget {
  const CartEmptyScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          width: Get.width * 0.5,
          alignment: Alignment.centerLeft,
          child: SvgPicture.asset(
            'assets/icons/shopping-cart.svg',
            color: Colors.grey.withOpacity(0.8),
            width: Get.width * 0.4,
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        Text(
          'No oreder yet',
          style: Get.theme.textTheme.bodyText1?.copyWith(
            fontSize: 21,
          ),
        ),
        SizedBox(height: Get.height * 0.01),
        Text(
          'Hit the orange button down\nbelow to Create an order',
          style: Get.theme.textTheme.bodyText1?.copyWith(
            color: Colors.grey,
          ),
        ),
        const Spacer(),
        CustomButton(
          text: 'Start odering',
          onPressed: () => Get.back(),
        ),
        SizedBox(height: Get.height * 0.05),
      ],
    );
  }
}
