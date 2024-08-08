import 'package:flutter/material.dart';
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  colorScheme: ColorScheme.dark(
  surface: const Color.fromARGB(255, 31, 30, 30),
  primary: const Color.fromARGB(255, 197, 189, 189)!,
  secondary:const Color.fromARGB(255, 165, 160, 160),
  )
);