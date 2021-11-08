import 'package:http/http.dart' as http;

const String baseUrl = 'https://user-authh.herokuapp.com/api/v1';
const String signUpRoute = baseUrl + '/user/signup';
const String signInRoute = baseUrl + '/user/auth/signin';

class API {
  Future signUp({
    required String email,
    required String password,
    required String firstname,
    required String lastname,
  }) async {
    http.Response response = await http.post(Uri.parse(signUpRoute), body: {
      "email": email,
      "password": password,
      "lastname": lastname,
      "firstname": firstname,
    });

    return response;
  }

  Future signIn({
    required String email,
    required String password,
  }) async {
    http.Response response = await http.post(Uri.parse(signInRoute), body: {
      "email": email,
      "password": password,
    });

    return response;
  }
}
