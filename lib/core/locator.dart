import 'package:acumen_app/ui/views/root_view/root_view_model.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton<RootViewModel>(() => RootViewModel());
}
