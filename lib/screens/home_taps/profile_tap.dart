import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../components/custom_app_bar.dart';
import '../../components/custom_button.dart';

class ProfileTap extends StatelessWidget {
  ProfileTap({Key? key}) : super(key: key);
  RxInt paymentMethod = 1.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.02),
            CustomAppBar(title: 'Profile'),
            Expanded(
              child: SizedBox(
                width: Get.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    titleWidget('Information'),
                    SizedBox(height: Get.height * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: Get.width * 0.25,
                            height: Get.width * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/MyPhoto.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: Get.width * 0.05),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              titleWidget('Brahim CHOUIH'),
                              SizedBox(height: Get.height * 0.01),
                              titleWidget(
                                'brahim26chouih@gmail.com',
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                              SizedBox(height: Get.height * 0.01),
                              titleWidget(
                                'Mobile app developer',
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Get.height * 0.02),
                    titleWidget('Payment Method'),
                    SizedBox(height: Get.height * 0.02),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(15),
                      child: Obx(
                        () => Column(
                          children: [
                            radioButton(
                              1,
                              'Card',
                              const Color(0xffF47B0A),
                              FontAwesomeIcons.creditCard,
                            ),
                            SizedBox(
                              width: Get.width * 0.7,
                              child: const Divider(color: Colors.black38),
                            ),
                            radioButton(
                              2,
                              'Bank account',
                              const Color(0xffEB4796),
                              FontAwesomeIcons.landmark,
                            ),
                            SizedBox(
                              width: Get.width * 0.7,
                              child: const Divider(color: Colors.black38),
                            ),
                            radioButton(
                              3,
                              'Paypal',
                              const Color(0xff0038FF),
                              FontAwesomeIcons.paypal,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              text: 'Update',
              onPressed: () {},
            ),
            SizedBox(height: Get.height * 0.01),
          ],
        ),
      ),
    );
  }

  Widget radioButton(
    int value,
    String title,
    Color color,
    IconData icon,
  ) {
    return InkWell(
      onTap: () {
        paymentMethod.value = value;
      },
      child: Row(
        children: [
          Radio<int>(
            value: value,
            activeColor: const Color(0xffFA4A0C),
            groupValue: paymentMethod.value,
            onChanged: (value) {
              paymentMethod.value = value ?? 1;
            },
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 40,
                height: 40,
                alignment: Alignment.center,
                child: FaIcon(
                  icon,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              titleWidget(
                title,
                fontSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget titleWidget(
    String title, {
    Color? color,
    double fontSize = 18,
    FontWeight? fontWeight,
  }) =>
      Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
          fontWeight: fontWeight,
        ),
      );
}
