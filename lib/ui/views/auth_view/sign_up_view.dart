import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/widgets/custom_gradient_button.dart';
import 'package:acumen_app/ui/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset('arrow_left'.svg),
            ),
            SizedBox(height: 22.h),
            const CustomText(
              'Let\'s start here',
              fontWeight: FontWeight.w700,
              fontSize: 34,
            ),
            const CustomText(
              'Fill in your details to begin',
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.grey7A,
            ),
            SizedBox(height: 22.h),
            const CustomTextField(
              label: 'First name',
              inputType: TextInputType.name,
            ),
            SizedBox(height: 22.h),
            const CustomTextField(
              label: 'Last name',
              inputType: TextInputType.name,
            ),
            SizedBox(height: 22.h),
            const CustomTextField(
              label: 'E-mail',
              inputType: TextInputType.emailAddress,
            ),
            SizedBox(height: 22.h),
            const CustomTextField(
              label: 'Password',
              inputType: TextInputType.visiblePassword,
            ),
            SizedBox(height: 31.h),
            const CustomGradientButton(
              text: 'Sign up',
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.w),
              child: buildTermsOfUse(),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  RichText buildTermsOfUse() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By signing up, I agree with',
            style: GoogleFonts.poppins(
              color: const Color(0xFFB0B0B0),
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: ' Terms of Use ',
            style: GoogleFonts.poppins(
              color: AppColors.black20,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Terms of Use');
              },
          ),
          TextSpan(
            text: ' and',
            style: GoogleFonts.poppins(
              color: const Color(0xFFB0B0B0),
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: GoogleFonts.poppins(
              color: AppColors.black20,
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Privacy Policy');
              },
          ),
        ],
      ),
    );
  }
}
