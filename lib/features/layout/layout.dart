import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';
import 'package:task1_digital_code/core/utils/app_images.dart';
import 'package:badges/badges.dart' as badges;
import 'package:task1_digital_code/core/utils/app_strings.dart';
import 'package:task1_digital_code/core/utils/app_styles.dart';
import 'package:task1_digital_code/features/layout/active_icon.dart';
import 'package:task1_digital_code/features/layout/tabs/home/home_tab.dart';
import 'package:task1_digital_code/features/layout/tabs/my_provider.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      builder: (context, child) {
        var provider = Provider.of<MyProvider>(context);
        return Scaffold(
          backgroundColor: AppColors.whiteColor,
          body: HomeTab(),
          bottomNavigationBar: SizedBox(
            height: 74.h,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.whiteColor,
              selectedItemColor: AppColors.primaryColor,
              unselectedItemColor: AppColors.hintColor,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedLabelStyle: AppStyles.bodyText.copyWith(fontSize: 10.sp),
              unselectedLabelStyle: AppStyles.bodyText
                  .copyWith(fontSize: 10.sp, fontWeight: FontWeight.w500),
              currentIndex: provider.index,
              onTap: provider.changeIndex,
              items: [
                BottomNavigationBarItem(
                    activeIcon: const ActiveIcon(image: AppImages.home),
                    icon: SvgPicture.asset(
                      AppImages.home,
                      width: 18.w,
                      height: 14.h,
                      colorFilter: const ColorFilter.mode(
                          AppColors.hintColor, BlendMode.srcIn),
                    ),
                    label: AppStrings.home),
                BottomNavigationBarItem(
                    activeIcon: const ActiveIcon(image: AppImages.search),
                    icon: SvgPicture.asset(
                      AppImages.search,
                      width: 18.w,
                      height: 14.h,
                    ),
                    label: AppStrings.search),
                BottomNavigationBarItem(
                    activeIcon: badges.Badge(
                      position:
                          badges.BadgePosition.custom(bottom: 6, start: 11),
                      badgeAnimation: const badges.BadgeAnimation.slide(
                        animationDuration: Duration(seconds: 2),
                      ),
                      badgeContent: Text(
                        '2',
                        style: AppStyles.buttonText.copyWith(fontSize: 10.sp),
                      ),
                      badgeStyle: const badges.BadgeStyle(
                          badgeColor: AppColors.redColor),
                      child: const ActiveIcon(image: AppImages.cart),
                    ),
                    icon: badges.Badge(
                      position:
                          badges.BadgePosition.custom(bottom: 6.h, start: 11.w),
                      badgeAnimation: const badges.BadgeAnimation.slide(
                        animationDuration: Duration(seconds: 2),
                      ),
                      badgeContent: Text(
                        '2',
                        style: AppStyles.buttonText.copyWith(fontSize: 10.sp),
                      ),
                      badgeStyle: const badges.BadgeStyle(
                          badgeColor: AppColors.redColor),
                      child: SvgPicture.asset(
                        AppImages.cart,
                        width: 18.w,
                        height: 14.h,
                      ),
                    ),
                    label: AppStrings.cart),
                BottomNavigationBarItem(
                    activeIcon: const ActiveIcon(image: AppImages.offer),
                    icon: SvgPicture.asset(
                      AppImages.offer,
                      width: 18.w,
                      height: 14.h,
                    ),
                    label: AppStrings.offer),
                BottomNavigationBarItem(
                    activeIcon: const ActiveIcon(image: AppImages.account),
                    icon: SvgPicture.asset(
                      AppImages.account,
                      width: 18.w,
                      height: 14.h,
                    ),
                    label: AppStrings.account),
              ],
            ),
          ),
        );
      },
    );
  }
}
