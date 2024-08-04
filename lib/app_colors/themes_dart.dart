import 'package:flutter/material.dart';
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
  colorScheme: ColorScheme.dark(
  surface: Colors.black,
  primary: Colors.grey[850]!,
  secondary:Colors.grey[950]!,
  )
);