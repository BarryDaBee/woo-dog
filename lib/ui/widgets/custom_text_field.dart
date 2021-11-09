import 'package:acumen_app/core/exports.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextInputType? inputType;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final String? initialValue;

  const CustomTextField(
      {Key? key,
      required this.label,
      this.inputType,
      this.onChanged,
      this.validator,
      this.initialValue})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool shouldHide = false;

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
                    initialValue: widget.initialValue,
                    keyboardType: widget.inputType,
                    obscureText: shouldHide,
                    cursorColor: AppColors.orangeDark,
                    onChanged: widget.onChanged,
                    maxLines: 1,
                    validator: widget.validator,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 1),
                      isDense: true,
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.poppins(
                      color: AppColors.black2B,
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
