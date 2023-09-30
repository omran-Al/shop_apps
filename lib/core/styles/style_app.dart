import 'package:flutter/material.dart';
import 'package:shop_apps/gen/fonts.gen.dart';
import 'package:shop_apps/core/styles/app_color.dart';

ThemeData themeData = ThemeData(
  fontFamily: FontFamily.gilroy,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: ColorManger.primaryColor,
  ),
);
