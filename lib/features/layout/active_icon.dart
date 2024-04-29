import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';

class ActiveIcon extends StatelessWidget {
  const ActiveIcon({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      width: 18.w,
      height: 14.h,
      colorFilter:
      const ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),
    );
  }
}