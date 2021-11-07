import 'package:acumen_app/core/exports.dart';

class WalkerInfoCard extends StatelessWidget {
  final String? imageUrl;
  final String name;
  final int? distanceInKm;
  final int? rate;
  const WalkerInfoCard(
      {Key? key,
      this.imageUrl,
      required this.name,
      this.distanceInKm,
      required this.rate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                imageUrl ?? 'dog_walker0'.png,
                height: 125.h,
                width: 175.w,
              ),
            ),
            Positioned(
              right: 10.w,
              top: 10.h,
              child: Container(
                height: 25.h,
                width: 49.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color(0xFFE5E5EA).withOpacity(0.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.star,
                      color: AppColors.yellow,
                      size: 10,
                    ),
                    SizedBox(width: 3.w),
                    const CustomText(
                      '4.1',
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: AppColors.yellow,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  name,
                  color: AppColors.black2B,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'location'.svg,
                      height: 7.5,
                      width: 6.25,
                    ),
                    SizedBox(width: 4.w),
                    CustomText(
                      '$distanceInKm km from you',
                      fontSize: 10,
                      color: AppColors.greyA1,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(width: 33.w),
            Container(
              height: 25.h,
              width: 48.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: AppColors.black2B,
              ),
              child: CustomText(
                '\$$rate/h',
                color: AppColors.white,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ],
    );
  }
}
