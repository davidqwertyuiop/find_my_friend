
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key, });
  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = _themeMode == ThemeMode.dark;

    return MaterialApp(
      themeMode: _themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: 
          BackButton(onPressed: () {Navigator.pop(context);},),
          actions: <Widget>[
            Icon(isDarkMode ? Icons.bedtime : Icons.bedtime_off, color: Colors.white,),
            Switch(value: isDarkMode, onChanged: (isOn){_toggleTheme(isOn ? ThemeMode.dark : ThemeMode.light,);})
          ],
        ),
        body: Center(),
      )
    );
  }
}