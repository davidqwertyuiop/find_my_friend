// ignore_for_file: library_private_types_in_public_api


import 'package:flutter/material.dart';

import '../home_page.dart';
import 'my_password_field';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key,  });

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisibility = true;
  
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
  

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();
    super.dispose();}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        elevation: 0,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
         
         
         
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                           'Sign up',
                            style: TextStyle(color: Colors.white10),
                          ),
                          const Text(
                            "Create new account to get started.",
                            style: TextStyle(color: Colors.white24),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                           TextField(
                            controller: _name,
                            decoration: InputDecoration(
                              labelText:'Name', 
                             enabledBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1), 
                            borderRadius: BorderRadius.circular(18)),
                            focusedBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1,), 
                            borderRadius: BorderRadius.circular(18)),
                           ),obscureText: true,),
                          TextField(
                            controller: _email,
                            decoration: InputDecoration(
                            labelText: "Email",
                            enabledBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1), 
                            borderRadius: BorderRadius.circular(18)),
                            focusedBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1,), 
                            borderRadius: BorderRadius.circular(18)),
                           ),obscureText: true,),
                        
                          MyPasswordField(
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            }, textEditingController: _password,
                          )
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Sign in",
                          style:TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                     child: const Text("Register"),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => const HomeScreen())));
                        },
                        ),
                        
                      ]
              )
              )
            )
          ]
        )
      )
    );
  }
}
