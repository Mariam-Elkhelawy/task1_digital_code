import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';
import 'package:task1_digital_code/core/utils/app_strings.dart';
import 'package:task1_digital_code/core/utils/app_styles.dart';

class SeeMore extends StatelessWidget {
  const SeeMore({super.key, required this.headLine, this.isAll = false});
  final String headLine;
  final bool isAll;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0.w),
      child: Row(
        children: [
          Text(
            headLine,
            style:
                AppStyles.bodyMedium.copyWith(color: AppColors.headLineColor),
          ),
          const Spacer(),
          Text(
            isAll ? AppStrings.viewAll : AppStrings.seeMore,
            style: AppStyles.bodyMedium.copyWith(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
