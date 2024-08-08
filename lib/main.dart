import 'package:find_my_friend/Login_UI/loginscreen.dart';
import 'package:flutter/material.dart';

import 'app_colors/themes_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme:darkTheme,
      themeMode: ThemeMode.system,
      home: const SignInPage(),
    );
  }
}