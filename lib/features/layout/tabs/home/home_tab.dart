import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_digital_code/core/components/reusable_components.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';
import 'package:task1_digital_code/core/utils/app_images.dart';
import 'package:task1_digital_code/core/utils/app_strings.dart';
import 'package:task1_digital_code/core/utils/app_styles.dart';
import 'package:badges/badges.dart' as badges;
import 'package:task1_digital_code/features/layout/tabs/home/widgets/category_container.dart';
import 'package:task1_digital_code/features/layout/tabs/home/widgets/deals_widget.dart';
import 'package:task1_digital_code/features/layout/tabs/home/widgets/popular_widget.dart';
import 'package:task1_digital_code/features/layout/tabs/home/widgets/see_more.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});
  final List<String> category = [
    'Accessories',
    'clocks',
    'Furniture',
    'Men Style'
  ];
  final List<String> deals = [
    AppImages.hot1,
    AppImages.hot2,
    AppImages.hot3,
    AppImages.hot4,
  ];
  final Map<String, String> popular = {
    AppImages.shoes: "FS - Nike Air Max 270 React...",
    AppImages.popular: "FS - QUILTED MAXI CROS...",
    AppImages.hot4: "FS - QUILTED MAXI CROS...",
  };
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 60.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 250.w,
                  child: customTextFormField(
                    borderColor: AppColors.primaryColor,
                    height: 37.h,
                    radius: 5.r,
                    hintText: AppStrings.searchHint,
                    hintStyle:
                        AppStyles.formText.copyWith(color: AppColors.greyColor),
                    prefixIcon: const ImageIcon(
                      AssetImage(AppImages.searchForm),
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(width: 14.w),
                Container(
                  width: 37,
                  height: 37,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xFFF3F3F4)),
                  child: Image.asset(
                    AppImages.filter,
                    width: 19.w,
                    height: 19.h,
                  ),
                ),
                SizedBox(width: 12.w),
                badges.Badge(
                  position:
                      badges.BadgePosition.custom(bottom: 17.h, start: 15.w),
                  badgeAnimation: const badges.BadgeAnimation.slide(
                    animationDuration: Duration(seconds: 2),
                  ),
                  badgeStyle:
                      const badges.BadgeStyle(badgeColor: AppColors.redColor),
                  child: const ImageIcon(
                    AssetImage(AppImages.notification),
                    color: AppColors.hintColor,
                    size: 32,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(right: 20.0.w),
              child: Image.asset(
                AppImages.poster,
                width: 335.w,
                height: 150.h,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 19.h),
            Padding(
              padding: EdgeInsets.only(right: 20.0.w),
              child: DotsIndicator(
                dotsCount: 3,
                position: 1,
                decorator: DotsDecorator(
                  color: AppColors.dotColor,
                  activeColor: AppColors.primaryColor,
                ),
              ),
            ),
            SizedBox(height: 11.h),
            const SeeMore(
              headLine: AppStrings.categories,
              isAll: true,
            ),
            SizedBox(height: 7.h),
            SizedBox(
              height: 65,
              child: ListView.builder(
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryWidget(productName: category[index]);
                },
              ),
            ),
            SizedBox(height: 29.h),
            const SeeMore(
              headLine: AppStrings.popular,
            ),
            SizedBox(height: 6.h),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  List images = popular.keys.toList();
                  List titles = popular.values.toList();
                  return PopularWidget(
                    image: images[index],
                    title: titles[index],
                  );
                },
              ),
            ),
            SizedBox(height: 21.h),
            Text(
              AppStrings.aboutUs,
              style:
                  AppStyles.bodyMedium.copyWith(color: AppColors.headLineColor),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0.w, top: 5.h, bottom: 22.h),
              child: Image.asset(
                AppImages.aboutUs,
                height: 170.h,
                width: 335.w,
                fit: BoxFit.cover,
              ),
            ),
            const SeeMore(
              headLine: AppStrings.popularWoman,
            ),
            SizedBox(height: 6.h),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  List images = popular.keys.toList();
                  List titles = popular.values.toList();
                  return PopularWidget(
                    image: images[index],
                    title: titles[index],
                  );
                },
              ),
            ),
            SizedBox(height: 22.h),
            const SeeMore(
              headLine: AppStrings.popularMan,
            ),
            SizedBox(height: 6.h),
            SizedBox(
              height: 240,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  List images = popular.keys.toList();
                  List titles = popular.values.toList();
                  return PopularWidget(
                    image: images[index],
                    title: titles[index],
                  );
                },
              ),
            ),
            SizedBox(height: 23.h),
            const SeeMore(
              headLine: AppStrings.deals,
            ),
            SizedBox(height: 6.h),
            SizedBox(
              height: 570.h,
              child: Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: GridView.builder(padding: EdgeInsets.zero,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 8/12.8,
                    mainAxisSpacing: 12.w,crossAxisSpacing: 12.h,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return DealsWidget(image: deals[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
