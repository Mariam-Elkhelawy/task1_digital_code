import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles {
  static TextStyle formText = GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      color: AppColors.hintColor,
      letterSpacing: .5);
  static TextStyle buttonText = GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.whiteColor,
      letterSpacing: .5);
  static TextStyle bodyText = GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
      color: AppColors.primaryColor,
      letterSpacing: .5);
  static TextStyle bodyMedium = GoogleFonts.heebo(
      fontSize: 18.sp,
      fontWeight: FontWeight.w500,
      color: AppColors.primaryColor,
      letterSpacing: .02);
}
