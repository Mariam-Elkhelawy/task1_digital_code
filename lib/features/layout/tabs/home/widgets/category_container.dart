import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';
import 'package:task1_digital_code/core/utils/app_images.dart';
import 'package:task1_digital_code/core/utils/app_styles.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.productName});
  final String productName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 8.w),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AppImages.bag,
            width: 104.w,
            height: 64.h,
          ),
          Text(
            productName,
            style: AppStyles.bodyMedium
                .copyWith(color: AppColors.blackColor, fontSize: 14),
          )
        ],
      ),
    );
  }
}
