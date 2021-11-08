import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/exports.dart';
import 'core/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const WooDogApp());
}

class WooDogApp extends StatefulWidget {
  const WooDogApp({Key? key}) : super(key: key);

  @override
  State<WooDogApp> createState() => _WooDogAppState();
}

class _WooDogAppState extends State<WooDogApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Acumen App',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.white,
        ),
        initialRoute: Routes.onboardingView,
        onGenerateRoute: Routes.onGenerateRoute,
      ),
    );
  }
}
