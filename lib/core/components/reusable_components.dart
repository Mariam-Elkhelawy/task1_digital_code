import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';

Widget unDefinedRoute() {
  return const Scaffold(
    body: Center(
      child: Text('Route Name Not Found'),
    ),
  );
}

Widget customTextFormField(
    {String? hintText,
    TextStyle? hintStyle,
    required Color borderColor,
    Widget? prefixIcon,
    Widget? suffixIcon,
    TextEditingController? controller,
    required double height,
    double radius = 0}) {
  return SizedBox(
    height: height,
    child: TextFormField(
      cursorColor: AppColors.primaryColor,
      controller: controller,
      decoration: InputDecoration(contentPadding: EdgeInsets.symmetric(vertical: 5.h),
        hintText: hintText,
        hintStyle: hintStyle,
        filled: true,
        fillColor: AppColors.whiteColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    ),
  );
}

Container customButton(
    {Widget? child,
    double? width,
    double? height,
    Color? color,
    required double borderRadius,
    EdgeInsetsGeometry? padding}) {
  return Container(
    padding: padding,
    width: width,
    height: height,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius), color: color,
        boxShadow: [
          BoxShadow(
            color: AppColors.shadowColor,
            spreadRadius: 0,
            blurRadius: 30,
            offset: const Offset(0, 10), // changes position of shadow
          ),
        ],),
    child: Center(child: child),
  );
}
