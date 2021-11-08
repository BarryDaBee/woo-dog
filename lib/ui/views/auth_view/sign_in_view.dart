import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/views/auth_view/sign_in_view_model.dart';
import 'package:acumen_app/ui/widgets/custom_gradient_button.dart';
import 'package:acumen_app/ui/widgets/custom_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInView extends StatelessWidget {
  SignInView({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignInViewModel>.reactive(
      disposeViewModel: false,
      builder: (BuildContext context, SignInViewModel model, Widget? child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(4.r),
                    child: SvgPicture.asset('arrow_left'.svg),
                  ),
                ),
                SizedBox(height: 22.h),
                const CustomText(
                  'Sign in',
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: AppColors.black2B,
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
                    ],
                  ),
                ),
                SizedBox(height: 104.h),
                CustomGradientButton(
                  text: 'Sign in',
                  isBusy: model.isBusy,
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      await model.signIn(context);
                    }
                  },
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
      },
      viewModelBuilder: () => locator<SignInViewModel>(),
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
