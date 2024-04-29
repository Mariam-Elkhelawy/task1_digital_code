import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task1_digital_code/cofig/routes/app_router_names.dart';
import 'package:task1_digital_code/core/components/reusable_components.dart';
import 'package:task1_digital_code/core/utils/app_colors.dart';
import 'package:task1_digital_code/core/utils/app_images.dart';
import 'package:task1_digital_code/core/utils/app_strings.dart';
import 'package:task1_digital_code/core/utils/app_styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 135.h),
              Image.asset(AppImages.register, width: 375.w, height: 240.h),
              SizedBox(height: 65.h),
              customTextFormField(
                  borderColor: AppColors.borderColor,
                  height: 48.h,
                  radius: 5,
                  prefixIcon: const ImageIcon(
                    AssetImage(AppImages.name),
                    color: AppColors.prefixIconColor,
                  ),
                  hintText: AppStrings.nameHint,
                  hintStyle: AppStyles.formText),
              SizedBox(height: 8.h),
              customTextFormField(
                  borderColor: AppColors.borderColor,
                  height: 48.h,
                  radius: 5,
                  prefixIcon: const ImageIcon(
                    AssetImage(AppImages.email),
                    color: AppColors.prefixIconColor,
                  ),
                  hintText: AppStrings.emailHint,
                  hintStyle: AppStyles.formText),
              SizedBox(height: 8.h),
              customTextFormField(
                  borderColor: AppColors.borderColor,
                  height: 48.h,
                  radius: 5,
                  prefixIcon: const ImageIcon(
                    AssetImage(AppImages.password),
                    color: AppColors.prefixIconColor,
                  ),
                  hintText: AppStrings.passwordHint,
                  hintStyle: AppStyles.formText),
              SizedBox(height: 8.h),
              customTextFormField(
                  borderColor: AppColors.borderColor,
                  height: 48.h,
                  radius: 5,
                  prefixIcon: const ImageIcon(
                    AssetImage(AppImages.password),
                    color: AppColors.prefixIconColor,
                  ),
                  hintText: AppStrings.phoneHint,
                  hintStyle: AppStyles.formText),
              SizedBox(height: 16.h),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouterNames.layout);
                },
                child: customButton(
                  height: 57.h,
                  color: AppColors.primaryColor,
                  borderRadius: 10.r,
                  child: Text(
                    AppStrings.signUp,
                    style: AppStyles.buttonText,
                  ),
                ),
              ),
              SizedBox(height: 31.h),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRouterNames.login);
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: AppStrings.haveAccount,
                          style: AppStyles.formText),
                      TextSpan(
                          text: " ${AppStrings.signIn}",
                          style: AppStyles.bodyText),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
