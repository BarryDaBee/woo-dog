import 'dart:convert';

import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/core/locator.dart';
import 'package:acumen_app/core/models/user.dart';
import 'package:acumen_app/core/services/api.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart';

class SignUpViewModel extends BaseViewModel {
  String email = '';
  String password = '';
  String firstname = '';
  String lastname = '';
  final API api = locator<API>();
  User user = locator<User>();
  Future signUp(BuildContext context) async {
    setBusy(true);

    bool isValid = [password, lastname, firstname, email]
        .every((element) => element.isNotEmpty);
    if (isValid) {
      Response response = await api.signUp(
          email: email,
          password: password,
          firstname: firstname,
          lastname: lastname);
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
