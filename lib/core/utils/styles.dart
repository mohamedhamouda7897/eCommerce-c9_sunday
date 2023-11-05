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


  static final poppins11 = GoogleFonts.poppins(
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColor.primary.withOpacity(.6),
    fontWeight: FontWeight.w400,
    fontSize: 11.sp,
    color: AppColor.primary.withOpacity(.6),
  );

  static final poppins12 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColor.font.withOpacity(.6),
  );

  static final poppins14 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: AppColor.font,
  );
  static final poppins18 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: AppColor.font,
  );
  static final poppins20 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: Colors.white,
  );
}
