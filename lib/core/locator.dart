import 'package:acumen_app/ui/views/auth_view/sign_in_view_model.dart';
import 'package:acumen_app/ui/views/auth_view/sign_up_view.dart';
import 'package:acumen_app/ui/views/auth_view/sign_up_view_model.dart';
import 'package:acumen_app/ui/views/root_view/root_view_model.dart';
import 'package:get_it/get_it.dart';

import 'models/user.dart';
import 'services/api.dart';

final locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton<RootViewModel>(() => RootViewModel());
  locator.registerLazySingleton<SignUpViewModel>(() => SignUpViewModel());
  locator.registerLazySingleton<SignInViewModel>(() => SignInViewModel());
  locator.registerLazySingleton<API>(() => API());
  locator.registerSingleton<User>(User());
}
