import 'dart:ui';

import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/widgets/custom_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class WalkerInfoView extends StatelessWidget {
  const WalkerInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(
            'alex_murray'.png,
            fit: BoxFit.cover,
            height: 447.h,
            width: ScreenUtil.defaultSize.width,
          ),
          Positioned(
            top: 40,
            left: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22.r),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2,
                  sigmaY: 2,
                ),
                child: GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: CircleAvatar(
                    radius: 22.r,
                    backgroundColor: const Color(0xFFC4C4C4).withOpacity(0.4),
                    child: SvgPicture.asset(
                      'close'.svg,
                      height: 10.r,
                      width: 10.r,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22.r),
              child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 2,
                    sigmaY: 2,
                  ),
                  child: Container(
                    height: 44.h,
                    width: 101.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFC4C4C4).withOpacity(0.4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          'Verified',
                          fontSize: 13,
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(width: 2.w),
                        SvgPicture.asset('check_box'.svg),
                      ],
                    ),
                  )),
            ),
          ),
          Positioned(
            top: 343.h,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14),
                ),
                color: AppColors.white,
              ),
              width: ScreenUtil.defaultSize.width,
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomText(
                    'Alex Murray',
                    fontSize: 28,
                    color: AppColors.black2B,
                    fontWeight: FontWeight.w700,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildTwoPartText('5\$', '/hr'),
                      buildDivider(),
                      buildTwoPartText('10', ' km'),
                      buildDivider(),
                      Row(
                        children: const [
                          CustomText(
                            '4.4',
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: AppColors.black2B,
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: AppColors.greyA1,
                            size: 12,
                          )
                        ],
                      ),
                      buildDivider(),
                      buildTwoPartText('450', ' walks'),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  const Divider(height: 3, color: Color(0xFFE8E8E8)),
                  SizedBox(height: 22.h),
                  Row(
                    children: [
                      Container(
                        height: 44.h,
                        width: 99.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.black2B,
                        ),
                        child: const CustomText(
                          'About',
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Container(
                        height: 44.h,
                        width: 99.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.greyF5,
                        ),
                        child: const CustomText(
                          'Location',
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyB0,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Container(
                        height: 44.h,
                        width: 99.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: AppColors.greyF5,
                        ),
                        child: const CustomText(
                          'Reviews',
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyB0,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            'Age',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyB0,
                          ),
                          CustomText(
                            '30 years',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black2B,
                          ),
                        ],
                      ),
                      SizedBox(width: 45.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            'Experience',
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: AppColors.greyB0,
                          ),
                          CustomText(
                            '11 months',
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black2B,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 279.w,
                        child: const CustomText(
                          'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...',
                          fontSize: 13,
                          textAlign: TextAlign.left,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyB0,
                        ),
                      ),
                    ],
                  ),
                  const CustomText(
                    'Read more',
                    fontSize: 13,
                    textAlign: TextAlign.left,
                    fontWeight: FontWeight.w500,
                    color: AppColors.orangeDark,
                  ),
                  SizedBox(height: 22.h),
                  CustomGradientButton(
                    text: 'Check schedule',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDivider() {
    return Container(
      height: 15.h,
      color: AppColors.greyA1,
      width: 1,
      margin: EdgeInsets.symmetric(horizontal: 10.w),
    );
  }

  RichText buildTwoPartText(String text1, String text2) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: GoogleFonts.poppins(
              color: AppColors.black2B,
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
            ),
          ),
          TextSpan(
            text: text2,
            style: GoogleFonts.poppins(
                color: AppColors.greyB0,
                fontWeight: FontWeight.w500,
                fontSize: 13.sp),
          ),
        ],
      ),
    );
  }
}
