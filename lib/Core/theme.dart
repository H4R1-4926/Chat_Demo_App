import 'package:chat_app_demo/Core/color.dart';
import 'package:flutter/material.dart';

ThemeData lightmode = ThemeData(
    colorScheme: const ColorScheme.light(
        background: kLightGrey,
        primary: kGrey,
        secondary: kGrey,
        tertiary: kWhite,
        inversePrimary: kDarkGrey));
ThemeData darkmode = ThemeData(
    colorScheme: const ColorScheme.dark(
  background: kLightBlack,
  primary: kLightGrey,
  secondary: kLightGrey,
  tertiary: kWhite,
  inversePrimary: kGrey,
));
