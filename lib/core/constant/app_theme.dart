import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_size.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: AppSize.s22,
        fontWeight: FontWeight.bold,
        color: AppColor.black),
    bodyLarge:
        TextStyle(height: 2, color: AppColor.grey, fontSize: AppSize.s18),
    bodyMedium:
        TextStyle(height: 2, color: AppColor.grey, fontSize: AppSize.s12),
  ),
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: AppSize.s22,
        fontWeight: FontWeight.bold,
        color: AppColor.black),
    bodyLarge:
        TextStyle(height: 2, color: AppColor.grey, fontSize: AppSize.s18),
    bodyMedium:
        TextStyle(height: 2, color: AppColor.grey, fontSize: AppSize.s12),
  ),
);
