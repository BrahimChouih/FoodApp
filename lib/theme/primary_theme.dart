import 'package:flutter/material.dart';
import 'package:foodapp/utils/constants.dart';

ThemeData primaryTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: greyColor,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  hoverColor: Colors.transparent,
  inputDecorationTheme: const InputDecorationTheme(
    floatingLabelStyle: TextStyle(
      color: Colors.grey,
      fontFamily: 'SFProText',
    ),
    hintStyle: TextStyle(
      color: Colors.grey,
      fontFamily: 'SFProText',
      fontWeight: FontWeight.bold,
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
    headline3: TextStyle(
      fontFamily: 'SFProRounded',
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontFamily: 'SFProRounded',
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontFamily: 'SFProText',
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontFamily: 'SFProText',
      color: Colors.black,
    ),
  ),
);
