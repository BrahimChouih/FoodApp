import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants.dart';

ThemeData primaryTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: greyColor,
  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(
      color: Colors.grey,
      fontFamily: 'SFProText',
    ),
    labelStyle: TextStyle(
      color: Colors.grey,
      fontFamily: 'SFProText',
    ),
    focusColor: Colors.grey,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
  ),
  textTheme: const TextTheme(
    headline2: TextStyle(
      fontFamily: 'SFProRounded',
    ),
    bodyText2: TextStyle(
      fontFamily: 'SFProText',
      color: Colors.black,
    ),
  ),
);
