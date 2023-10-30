import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.white),
          backgroundColor: AppColor.bottomAppBarColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false));
}
