import 'dart:convert';

import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/core/models/user.dart';
import 'package:acumen_app/core/services/api.dart';
import 'package:http/http.dart';

class SignInViewModel extends BaseViewModel {
  String email = '';
  String password = '';
  final API api = locator<API>();
  User user = locator<User>();
  Future signIn(BuildContext context) async {
    setBusy(true);

    bool isValid = [password, email].every((element) => element.isNotEmpty);
    if (isValid) {
      Response response = await api.signIn(
        email: email,
        password: password,
      );
      Map<String, dynamic> data = jsonDecode(response.body);
      if (!data['error']) {
        user = User.fromJson(data);
        Navigator.pushNamedAndRemoveUntil(
            context, Routes.rootView, (route) => false);
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: AppColors.orangeLight,
              content: Container(
                height: 200.r,
                width: 200.r,
                alignment: Alignment.center,
                child: CustomText(
                  data["message"],
                  fontSize: 17,
                  textAlign: TextAlign.center,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            );
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: AppColors.orangeLight,
            content: Container(
              height: 200.r,
              width: 200.r,
              alignment: Alignment.center,
              child: const CustomText(
                "Please fill all the provided fields",
                fontSize: 17,
                textAlign: TextAlign.center,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          );
        },
      );
    }

    setBusy(false);
  }
}
