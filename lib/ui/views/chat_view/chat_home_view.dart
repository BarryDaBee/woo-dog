import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/widgets/chat_card.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatHomeView extends StatelessWidget {
  const ChatHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      children: [
        SizedBox(height: 50.h),
        const CustomText(
          'Chat',
          fontWeight: FontWeight.w700,
          fontSize: 34,
          color: AppColors.black2B,
        ),
        SizedBox(height: 20.h),
        buildSearchBarButton(),
        SizedBox(height: 26.5.h),
        ChatCard(
          name: 'Will Knowles',
          message: 'Hey! How’s your dog? ∙ 1min',
          imageUrl: 'chat_avatar0'.png,
          read: true,
        ),
        ChatCard(
          name: 'Ryan Bond',
          message: 'Let’s go out! ∙ 5h',
          imageUrl: 'chat_avatar1'.png,
        ),
        ChatCard(
          name: 'Sirena Paul',
          imageUrl: 'chat_avatar2'.png,
          message: 'Hey! Long time no see ∙ 1min',
          read: true,
        ),
        ChatCard(
          name: 'Matt Chapman',
          message: 'You fed the dog? ∙ 6h',
          imageUrl: 'chat_avatar3'.png,
        ),
        ChatCard(
          name: 'Laura Pierce',
          message: 'How are you doing? ∙ 7h',
          imageUrl: 'chat_avatar4'.png,
        ),
        ChatCard(
          name: 'Hazel Reed',
          imageUrl: 'chat_avatar2'.png,
          message: 'Hey! Long time no see ∙ 1min',
        ),
      ],
    );
  }

  Widget buildSearchBarButton() {
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
            'search'.svg,
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
                  hintText: 'Search...',
                  hintStyle: GoogleFonts.poppins(
                    color: AppColors.greyA1,
                    fontSize: 17.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          SvgPicture.asset('filter'.svg),
        ],
      ),
    );
  }
}
