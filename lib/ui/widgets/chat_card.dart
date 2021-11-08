import 'package:acumen_app/core/exports.dart';

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
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.chatView);
      },
      child: Container(
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
      ),
    );
  }
}
