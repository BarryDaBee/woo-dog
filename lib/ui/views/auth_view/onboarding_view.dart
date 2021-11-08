import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/widgets/custom_gradient_button.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black20,
      body: Stack(
        children: [
          Image.asset(
            'onboarding_picture'.png,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                buildLogo(),
                const Spacer(),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: const CustomText(
                              '1',
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                            backgroundColor: AppColors.white,
                            radius: 15.r,
                          ),
                          Container(
                            width: 10.w,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            height: 1,
                            color: AppColors.white,
                          ),
                          CircleAvatar(
                            child: const CustomText(
                              '2',
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                            backgroundColor: AppColors.black40,
                            radius: 15.r,
                          ),
                          Container(
                            width: 10.w,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            height: 1,
                            color: AppColors.white,
                          ),
                          CircleAvatar(
                            child: const CustomText(
                              '3',
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                            backgroundColor: AppColors.black40,
                            radius: 15.r,
                          ),
                        ],
                      ),
                      SizedBox(height: 22.h),
                      const CustomText(
                        'Too tired to walk your dog? Let’s help you!',
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 22.h),
                      CustomGradientButton(
                        text: 'Join our community',
                        onTap: () {
                          Navigator.pushNamed(context, Routes.signUpView);
                        },
                      ),
                      SizedBox(height: 22.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomText(
                            'Already a member?',
                            fontSize: 13,
                            letterSpacing: 0.41,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                          SizedBox(width: 5.w),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Routes.signUpView);
                            },
                            child: const CustomText(
                              'Sign in',
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: AppColors.orangeDark,
                              letterSpacing: 0.41,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLogo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Image.asset(
          ///Used png because svg had issues
          'woo_dog_logo'.png,
          height: 40.h,
          width: 40.h,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CustomText(
              'WOO',
              textAlign: TextAlign.center,
              fontSize: 22,
              fontWeight: FontWeight.w900,
              height: 0.8,
              color: AppColors.red,
            ),
            CustomText(
              'DOG',
              textAlign: TextAlign.center,
              fontSize: 22,
              fontWeight: FontWeight.w900,
              height: 0.8,
              color: AppColors.red,
            ),
          ],
        ),
      ],
    );
  }
}
