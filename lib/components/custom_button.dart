import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text = "",
    this.color = Colors.white,
    this.backgroundColor = primaryColor,
    this.onPressed,
  }) : super(key: key);
  final String text;
  final Color color;
  final Color backgroundColor;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: color,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
