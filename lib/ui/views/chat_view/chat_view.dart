import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/widgets/chat_bubble.dart';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                GestureDetector(
                  onTap: Navigator.of(context).pop,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      'arrow_left'.svg,
                      width: 15,
                      height: 19,
                    ),
                  ),
                ),
                SizedBox(
                  width: 14.w,
                ),
                CircleAvatar(
                  radius: 24.r,
                  backgroundImage: AssetImage('alex_murray'.png),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      'Alex Murray',
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: AppColors.black2B,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 3,
                          backgroundColor: AppColors.green,
                        ),
                        SizedBox(width: 2.w),
                        const CustomText(
                          'Online',
                          fontSize: 13,
                          color: AppColors.lightGrey,
                          fontWeight: FontWeight.w500,
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                SvgPicture.asset('phone'.svg),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(bottom: 10.h),
                children: [
                  const CustomText(
                    '1 April 12:00',
                    color: AppColors.lightGrey,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12.h),
                  const ChatBubble(
                    message:
                        'Hey, Alex! Nice to meet you! I’d like to hire a walker and you’re perfect one for me. Can you help me out?',
                    isUserMessage: true,
                  ),
                  SizedBox(height: 10.h),
                  const ChatBubble(
                    message:
                        'Hi! That’s great! Let me give you a call and we’ll discuss all the details',
                    isUserMessage: false,
                  ),
                  SizedBox(height: 10.h),
                  const CustomText(
                    '12:30',
                    color: AppColors.lightGrey,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.h),
                  const ChatBubble(
                    message: 'Okay, I’m waiting for a call)',
                    isUserMessage: true,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 11.h),
              child: Row(
                children: [
                  Container(
                    height: 44.r,
                    width: 44.r,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.greyF5,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: SvgPicture.asset('plus'.svg),
                  ),
                  SizedBox(width: 17.w),
                  buildChatBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildChatBox() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.greyF5,
        borderRadius: BorderRadius.circular(14),
      ),
      width: 280.w,
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 280.w,
          maxWidth: 280.w,
          minHeight: 25.0.h,
          maxHeight: 135.h,
        ),
        child: Scrollbar(
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            maxLines: null,
            style: GoogleFonts.poppins(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
            keyboardType: TextInputType.multiline,
            textInputAction: TextInputAction.send,
            cursorColor: AppColors.orangeDark,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 12.w,
                top: 10.h,
                bottom: 10.h,
              ),
              hintText: ' Aa',
              hintStyle: GoogleFonts.poppins(
                fontSize: 17.sp,
              ),
              border: InputBorder.none,
              suffixIcon: Icon(
                Icons.mic,
                size: 25.r,
                color: const Color(0xFF130F26),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
