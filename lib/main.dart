import 'package:flutter/material.dart';
import 'package:login_example/pages/splash/splash.dart';
import 'package:login_example/utilities/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Example 2022',
      theme: themeDefault,
      home: const Splash(),
    );
  }
}
