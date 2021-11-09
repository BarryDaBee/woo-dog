import 'dart:convert';

import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/core/locator.dart';
import 'package:acumen_app/core/models/user.dart';
import 'package:acumen_app/core/services/api.dart';
import 'package:acumen_app/ui/widgets/error_dialog.dart';
import 'package:connectivity/connectivity.dart';

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

    var connectivityResult = await (Connectivity().checkConnectivity());

    ///Check if there is an internet connection before validating or making request.
    if (connectivityResult != ConnectivityResult.none) {
      ///Check if all the fields are not empty
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
          //do something with user;
          Navigator.pushReplacementNamed(context, Routes.rootView);
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(message: data['message']);
            },
          );
        }
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return const ErrorDialog(
                message: "Please fill all the provided fields");
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const ErrorDialog(
              message: "Please connect to the internet to proceed");
        },
      );
    }

    setBusy(false);
  }
}
