import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/core/locator.dart';
import 'package:acumen_app/ui/widgets/custom_gradient_button.dart';
import 'package:acumen_app/ui/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:core';
import 'sign_up_view_model.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
        viewModelBuilder: () => locator<SignUpViewModel>(),
        disposeViewModel: false,
        builder: (context, model, child) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            body: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                SizedBox(height: 50.h),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: EdgeInsets.all(4.r),
                        child: SvgPicture.asset('arrow_left'.svg),
                      ),
                    ),
                  ],
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
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        initialValue: model.firstname,
                        label: 'First name',
                        inputType: TextInputType.name,
                        onChanged: (value) {
                          model.firstname = value;
                        },
                      ),
                      SizedBox(height: 22.h),
                      CustomTextField(
                        initialValue: model.lastname,
                        label: 'Last name',
                        inputType: TextInputType.name,
                        onChanged: (value) {
                          model.lastname = value;
                        },
                      ),
                      SizedBox(height: 22.h),
                      CustomTextField(
                          initialValue: model.email,
                          label: 'E-mail',
                          inputType: TextInputType.emailAddress,
                          onChanged: (value) {
                            model.email = value;
                          }),
                      SizedBox(height: 22.h),
                      CustomTextField(
                        initialValue: model.password,
                        label: 'Password',
                        inputType: TextInputType.visiblePassword,
                        onChanged: (value) {
                          model.password = value;
                        },
                      ),
                      SizedBox(height: 31.h),
                      CustomGradientButton(
                        text: 'Sign up',
                        isBusy: model.isBusy,
                        onTap: () async {
                          await model.signUp(context);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 105.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33.w),
                  child: buildTermsOfUse(),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          );
        });
  }

  Widget buildTermsOfUse() {
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
            recognizer: TapGestureRecognizer()..onTap = () {},
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
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
