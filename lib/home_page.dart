import 'package:find_my_friend/Login_UI/my_text_button.dart';
import 'package:flutter/material.dart';
 class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Theme.of(context).colorScheme.surface ,
    
    body: 
    Container(height: 50, decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), borderRadius: BorderRadius.zero),
    child: Row(children: [
      Expanded(
        child: MyTextButton(buttonName: "Maps", onPressed: (){}, bgColor: Colors.black, onTap:(){}, textColor: Colors.black,))
    ],),),
    );
  }
}
