import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';
import 'dart:ui';

class Styles {
  static final poppins11 = GoogleFonts.poppins(
    decoration: TextDecoration.lineThrough,
    decorationColor: ColorApp.primary.withOpacity(.6),
    fontWeight: FontWeight.w400,
    fontSize: 11.sp,
    color: ColorApp.primary.withOpacity(.6),
  );

  static final poppins12 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: ColorApp.font.withOpacity(.6),
  );

  static final poppins14 = GoogleFonts.poppins(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    color: ColorApp.font,
  );
  static final poppins18 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    color: ColorApp.font,
  );
  static final poppins20 = GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 20.sp,
    color: Colors.white,
  );

}
