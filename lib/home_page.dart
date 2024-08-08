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
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: () { Navigator.pop(context);}, icon: const BackButtonIcon(),),),
      backgroundColor:Theme.of(context).colorScheme.surface ,
    body: 
    SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
      child:AnimatedSearchBar(
      duration: const Duration(seconds: 2),
      searchDecoration: 
      InputDecoration(
   
      hintText: 'Search...',
      border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(9.0),
      borderSide: BorderSide(), 
      ),
      filled: true,
      fillColor: Theme.of(context).colorScheme.primary    ),
      
    body: 
    Container(height: 50, decoration: const BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), borderRadius: BorderRadius.zero),
    child: Row(children: [
      Expanded(
        child: MyTextButton(buttonName: "Maps", onPressed: (){}, bgColor: Colors.black, onTap:(){}, textColor: Colors.black,))
    ],),),
    );
  }
}
