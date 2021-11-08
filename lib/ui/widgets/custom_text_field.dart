import 'package:acumen_app/core/exports.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextInputType? inputType;
  final ValueChanged<String>? onSubmitted;

  const CustomTextField(
      {Key? key, required this.label, this.inputType, this.onSubmitted})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool shouldHide = false;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.lighterGrey,
      ),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  widget.label,
                  color: AppColors.lightGrey,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: 26,
                  child: TextFormField(
                    keyboardType: widget.inputType,
                    obscureText: shouldHide,
                    controller: _controller,
                    cursorColor: AppColors.orangeDark,
                    onFieldSubmitted: widget.onSubmitted,
                    maxLines: 1,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1),
                      isDense: true,
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17.sp,
                      letterSpacing: shouldHide ? 2 : null,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          widget.inputType == TextInputType.visiblePassword
              ? InkWell(
                  onTap: () {
                    setState(() {
                      shouldHide = !shouldHide;
                    });
                  },
                  child: Icon(
                    shouldHide
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: AppColors.lightGrey,
                    size: 20.r,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
