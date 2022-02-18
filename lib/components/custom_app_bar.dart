import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    Key? key,
    this.leading,
    this.padding = 8.0,
    this.title,
    this.trailing,
  }) : super(key: key);

  Widget? leading;
  Widget? trailing;
  String? title;
  double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        children: [
          leading ?? const SizedBox(),
          Expanded(
            child: title != null ? Text(title!) : const SizedBox(),
          ),
          trailing ?? const SizedBox(),
        ],
      ),
    );
  }
}
