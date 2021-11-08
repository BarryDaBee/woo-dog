import 'package:acumen_app/core/exports.dart';
import 'package:google_fonts/google_fonts.dart';

class WalkerInfoView extends StatelessWidget {
  const WalkerInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'alex_murray'.png,
            height: 447.h,
            width: ScreenUtil.defaultSize.width,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CustomText(
                  'Alex Murray',
                  fontSize: 28,
                  color: AppColors.black2B,
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '5\$',
                            style: GoogleFonts.poppins(
                              color: AppColors.black2B,
                            ),
                          ),
                          TextSpan(
                            text: '/hr',
                            style: GoogleFonts.poppins(
                              color: AppColors.black2B,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
