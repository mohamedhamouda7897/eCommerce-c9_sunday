import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: AppColor.mainColor,
      backgroundColor: AppColor.mainColor,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: AppColor.mainColor),
    ),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.poppins(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: AppColor.textColor),
      bodySmall: GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.textColor,
      ),
    ),
  );
}
