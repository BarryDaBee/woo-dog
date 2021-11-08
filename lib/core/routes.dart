import 'package:acumen_app/core/exports.dart';
import 'package:acumen_app/ui/views/auth_view/onboarding_view.dart';
import 'package:acumen_app/ui/views/auth_view/sign_in_view.dart';
import 'package:acumen_app/ui/views/auth_view/sign_up_view.dart';
import 'package:acumen_app/ui/views/root_view/root_view.dart';
import 'package:acumen_app/ui/views/walker_info_view/walker_info_view.dart';

class Routes {
  static const String rootView = '/root_view';
  static const String onboardingView = '/onboarding_view';
  static const String chatView = '/chat_view';
  static const String walkerInfoView = '/walker_info_view';
  static const String signUpView = '/sign_up_view';
  static const String signInView = '/sign_in_view';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case rootView:
        return MaterialPageRoute(
          builder: (context) => const RootView(),
        );
      case signUpView:
        return MaterialPageRoute(
          builder: (context) => const SignUpView(),
        );
      case signInView:
        return MaterialPageRoute(
          builder: (context) => const SignInView(),
        );
      case onboardingView:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView(),
        );
      case walkerInfoView:
        return MaterialPageRoute(
          builder: (context) => const WalkerInfoView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: CustomText('Route not found'),
            ),
          ),
        );
    }
  }
}
