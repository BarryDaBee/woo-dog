import 'package:acumen_app/ui/views/auth_view/sign_in_view.dart';
import 'package:flutter/material.dart';

import 'core/exports.dart';
import 'ui/views/auth_view/onboarding_view.dart';
import 'ui/views/auth_view/sign_up_view.dart';

void main() {
  runApp(const WooDogApp());
}

class WooDogApp extends StatelessWidget {
  const WooDogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Acumen App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignInView(),
      ),
    );
  }
}
