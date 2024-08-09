import 'package:find_my_friend/Login_UI/appbar.dart';
import 'package:flutter/material.dart';
 class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textEditingController =  TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).colorScheme.surface ,
      appBar: const AppBars(),
      body: Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 2.0, color: Colors.grey)),),
    )
    );
  }
}
