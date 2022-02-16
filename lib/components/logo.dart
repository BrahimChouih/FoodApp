import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/utils/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    this.size = 40,
    this.backgroundColor = Colors.white,
    this.color = primaryColor,
  }) : super(key: key);
  final double size;
  final Color backgroundColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        color: color,
        height: size,
      ),
    );
  }
}
