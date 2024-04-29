import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';
import 'package:task1_digital_code/core/utils/app_images.dart';
import 'package:task1_digital_code/core/utils/app_styles.dart';

class DealsWidget extends StatelessWidget {
  const DealsWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 285.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.asset(
                image,
                width: 133.w,
                height: 133.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              'Nike Air Max 270 React ENG',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  AppStyles.bodyText.copyWith(color: AppColors.productColor),
            ),
            SizedBox(height: 4.h),
            Image.asset(AppImages.rating,width: 68.w,height: 12.h,),
            SizedBox(height: 6.h),
            Text(
              '\$299,43',
              style: AppStyles.bodyText,
            ),
            SizedBox(height: 6.h),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$534,33',
                    style: AppStyles.formText.copyWith(
                      fontSize: 10.sp,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  TextSpan(
                    text: "  24% Off",
                    style: AppStyles.bodyText
                        .copyWith(color: AppColors.redColor, fontSize: 10.sp),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
