import 'package:acumen_app/core/exports.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Row(
        children: [
          SvgPicture.asset(
            'location'.svg,
          ),
          SizedBox(width: 8.w),
          const CustomText(
            'Kiyv, Ukraine',
            color: AppColors.greyA1,
            fontSize: 17,
          ),
          const Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.asset('filter'.svg),
            ],
          ),
        ],
      ),
    );
  }
}
