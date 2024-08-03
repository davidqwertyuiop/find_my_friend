// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, 
     required this.hintText, required this.inputType, required this.textEditingController,
  });
  final String hintText;
  final TextInputType inputType;
  final TextEditingController textEditingController;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: TextField(
        controller: textEditingController,
        style: const TextStyle(color:Colors.white ),
        keyboardType: inputType,
        textInputAction:TextInputAction.next,
        decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(20),  
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white12, fontSize: 15),
        enabledBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1), borderRadius: BorderRadius.circular(18)),
        focusedBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1,), borderRadius: BorderRadius.circular(18)),
        )),
    );
  }
}