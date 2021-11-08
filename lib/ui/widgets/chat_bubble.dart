import 'package:acumen_app/core/exports.dart';
import 'package:bubble/bubble.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUserMessage;
  const ChatBubble({
    Key? key,
    required this.message,
    required this.isUserMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isUserMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Bubble(
          elevation: 0,
          color: isUserMessage ? AppColors.orangeDark : const Color(0xFFECEEF1),
          showNip: true,
          radius: const Radius.circular(15),
          nip: isUserMessage ? BubbleNip.rightBottom : BubbleNip.leftBottom,
          nipHeight: 18,
          nipWidth: 12,
          child: SizedBox(
            width: 215.w,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: CustomText(
                message,
                color: isUserMessage ? AppColors.white : AppColors.black2B,
                textAlign: TextAlign.left,
                fontWeight: FontWeight.w500,
                fontSize: 13,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
