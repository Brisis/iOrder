import 'package:flutter/material.dart';
import 'package:iorder/ui_main/homepage.dart';
import 'package:iorder/theme/themes.dart';
import 'package:iorder/ui_main/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iOrder',
      themeMode: ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const WelcomePage(),
    );
  }
}
