import 'package:acumen_app/core/exports.dart';

class CustomGradientButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const CustomGradientButton({Key? key, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 58,
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
        child: CustomText(
          text,
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );
  }
}
