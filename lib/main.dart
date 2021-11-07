import 'package:acumen_app/ui/views/root_view/root_view.dart';
import 'package:flutter/material.dart';

import 'core/exports.dart';
import 'core/locator.dart';
import 'ui/views/chat_view/chat_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
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
        home: const ChatView(),
      ),
    );
  }
}
