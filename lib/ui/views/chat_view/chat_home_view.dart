import 'package:acumen_app/core/exports.dart';

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
          const CustomText(
            'Search...',
            color: AppColors.greyA1,
            fontSize: 17,
          ),
          const Spacer(),
          SvgPicture.asset('filter'.svg),
        ],
      ),
    );
  }
}

class ChatCard extends StatelessWidget {
  final String? imageUrl;
  final String name;
  final String? message;
  final bool read;
  const ChatCard(
      {Key? key,
      this.imageUrl,
      required this.name,
      this.message,
      this.read = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 20.h),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 1,
            color: Color(0xFFECEEF1),
          ),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl ?? 'chat_avatar0'.png,
            height: 58.r,
            width: 58.r,
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                name,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: AppColors.black2B,
              ),
              CustomText(
                message ?? 'Hey! How’s your dog? ∙ 1min',
                fontSize: 17,
                color: const Color(0xFF4F4F4F),
              ),
            ],
          ),
          const Spacer(),
          read
              ? CircleAvatar(
                  backgroundColor: AppColors.orangeDark,
                  radius: 5.r,
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
