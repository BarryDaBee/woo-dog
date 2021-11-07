import 'package:acumen_app/core/exports.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final Color? color;
  final double? letterSpacing;

  final double? height;
  const CustomText(
    this.text, {
    Key? key,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.color,
    this.height,
    this.letterSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize?.sp,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
