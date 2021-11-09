import 'dart:convert';

import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/core/models/user.dart';
import 'package:acumen_app/core/services/api.dart';
import 'package:acumen_app/ui/widgets/error_dialog.dart';
import 'package:connectivity/connectivity.dart';

import 'package:http/http.dart';

class SignInViewModel extends BaseViewModel {
  String email = '';
  String password = '';
  final API api = locator<API>();
  User user = locator<User>();
  Future signIn(BuildContext context) async {
    setBusy(true);

    var connectivityResult = await (Connectivity().checkConnectivity());

    ///Check if there is an internet connection before validating or making request.
    if (connectivityResult != ConnectivityResult.none) {
      bool isValid = [password, email].every((element) => element.isNotEmpty);
      if (isValid) {
        Response response = await api.signIn(
          email: email,
          password: password,
        );
        Map<String, dynamic> data = jsonDecode(response.body);
        if (!data['error']) {
          user = User.fromJson(data);
          Navigator.pushReplacementNamed(context, Routes.rootView);
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return ErrorDialog(
                message: data['message'],
              );
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
