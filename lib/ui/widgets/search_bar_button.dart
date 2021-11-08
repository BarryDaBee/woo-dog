import 'package:acumen_app/core/exports.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarButton extends StatelessWidget {
  const SearchBarButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.5.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.lighterGrey,
      ),
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'location'.svg,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: SizedBox(
              height: 21.5.h,
              child: TextField(
                cursorColor: AppColors.orangeDark,
                style: GoogleFonts.poppins(
                  color: AppColors.black2B,
                  fontSize: 17.sp,
                ),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  isCollapsed: true,
                  contentPadding: EdgeInsets.zero,
                  border: InputBorder.none,
                  hintText: 'Kiyv, Ukraine',
                  hintStyle: GoogleFonts.poppins(
                    color: AppColors.greyA1,
                    fontSize: 17.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset('filter'.svg),
              const Positioned(
                top: -2,
                right: -2,
                child: CircleAvatar(
                  backgroundColor: AppColors.red,
                  radius: 3.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// const CustomText(
// 'Kiyv, Ukraine',
// color: AppColors.greyA1,
// fontSize: 17,
// ),
