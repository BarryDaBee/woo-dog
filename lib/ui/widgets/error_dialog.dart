import 'package:acumen_app/core/exports.dart';

class ErrorDialog extends StatelessWidget {
  final String message;
  const ErrorDialog({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.orangeLight,
      content: Container(
        height: 200.r,
        width: 200.r,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error, color: AppColors.white),
            CustomText(
              message,
              fontSize: 17,
              textAlign: TextAlign.center,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
