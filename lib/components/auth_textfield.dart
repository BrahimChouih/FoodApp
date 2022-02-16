import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    this.lableText,
    this.controller,
    this.isPassowrd = false,
    this.keyboardType,
  }) : super(key: key);
  final String? lableText;
  final TextEditingController? controller;
  final bool isPassowrd;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      obscureText: isPassowrd,
      keyboardType: keyboardType,
      style: Get.theme.textTheme.bodyText2?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        labelText: lableText,
      ),
    );
  }
}
