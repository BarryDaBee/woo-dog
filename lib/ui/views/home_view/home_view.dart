import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/widgets/search_bar_button.dart';
import 'package:acumen_app/ui/widgets/walker_info_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 50.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                    'Home',
                    fontWeight: FontWeight.w700,
                    fontSize: 34,
                  ),
                  CustomText(
                    'Explore dog walkers',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey7A,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 41,
                width: 104.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      AppColors.orangeDark,
                      AppColors.orangeLight,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                    CustomText(
                      'Book a walk',
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 22.h),
          const SearchBarButton(),
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CustomText(
                'Near you',
                fontWeight: FontWeight.w700,
                fontSize: 34,
              ),
              CustomText(
                'View all',
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                fontSize: 15,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          SizedBox(
            height: 180.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                WalkerInfoCard(
                  rate: 3,
                  name: 'Mason York',
                  distanceInKm: 7,
                  imageUrl: 'dog_walker0'.png,
                ),
                SizedBox(width: 43.w),
                WalkerInfoCard(
                  rate: 5,
                  imageUrl: 'dog_walker1'.png,
                  name: 'Mark Greene',
                  distanceInKm: 14,
                ),
              ],
            ),
            // child: ListView.separated(
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) => const WalkerInfoCard(
            //     rate: 3,
            //     name: 'James',
            //     distanceInKm: 7,
            //   ),
            //   separatorBuilder: (context, _) => SizedBox(
            //     width: 43.w,
            //   ),
            //   itemCount: 3,
            // ),
          ),
          SizedBox(height: 24.h),
          const Divider(
            height: 1,
            thickness: 1.5,
            color: Color(0xFFE8E8E8),
          ),
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              CustomText(
                'Suggested',
                fontWeight: FontWeight.w700,
                fontSize: 34,
              ),
              CustomText(
                'View all',
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
                fontSize: 15,
              ),
            ],
          ),
          SizedBox(height: 10.h),
          SizedBox(
            height: 180.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                WalkerInfoCard(
                  rate: 5,
                  name: 'Mark Greene',
                  distanceInKm: 2,
                  imageUrl: 'dog_walker2'.png,
                ),
                SizedBox(width: 43.w),
                WalkerInfoCard(
                  rate: 5,
                  imageUrl: 'dog_walker3'.png,
                  name: 'Trina Kain',
                  distanceInKm: 14,
                ),
              ],
            ),
            // child: ListView.separated(
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) => const WalkerInfoCard(
            //     rate: 3,
            //     name: 'James',
            //     distanceInKm: 7,
            //   ),
            //   separatorBuilder: (context, _) => SizedBox(
            //     width: 43.w,
            //   ),
            //   itemCount: 3,
            // ),
          ),
          // SizedBox(
          //   height: 180.h,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) => const WalkerInfoCard(
          //       rate: 3,
          //       name: 'James',
          //       distanceInKm: 7,
          //     ),
          //     separatorBuilder: (context, _) => SizedBox(
          //       width: 43.w,
          //     ),
          //     itemCount: 3,
          //   ),
          // ),
        ],
      ),
    );
  }
}
