import 'package:flutter/material.dart';
import 'package:foodapp/components/auth_textfield.dart';
import 'package:foodapp/components/custom_button.dart';
import 'package:foodapp/components/logo.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);
  RxBool isSignin = true.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Column(
        children: [
          Container(
            height: Get.height * 0.4,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(35),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(0, 10),
                  blurRadius: 10,
                  spreadRadius: -8,
                ),
              ],
            ),
            child: Column(
              children: [
                const Expanded(
                  child: Logo(
                    size: 80,
                  ),
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      switcher('Sign-In', isSignin.value),
                      switcher('Sign-Up', !isSignin.value),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              width: Get.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AuthTextField(
                    controller: emailController,
                    lableText: 'Email address',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  AuthTextField(
                    controller: passwordController,
                    lableText: 'Password',
                    isPassowrd: true,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomButton(
                    text: 'Sign-In',
                    onPressed: () {},
                  ),
                  const SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget switcher(String title, bool isActive) {
    return InkWell(
      onTap: () {
        if (!isActive) isSignin.value = !isSignin.value;
      },
      child: SizedBox(
        width: Get.width * 0.3,
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            AnimatedContainer(
              color: isActive ? primaryColor : Colors.transparent,
              height: 2,
              duration: const Duration(milliseconds: 150),
            ),
          ],
        ),
      ),
    );
  }
}
