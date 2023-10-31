import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginAndSignUpStyles {
  static ThemeData LightThemedata = ThemeData(
      scaffoldBackgroundColor: LoginAndSignUpColours.BackGround,
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 24.sp,
              color: Colors.white),
          bodyMedium: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.white),
          bodySmall: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 16.sp,
              color: Colors.white)));
}
