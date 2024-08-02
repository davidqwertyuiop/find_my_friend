import 'package:find_my_friend/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'registerpage.dart';



class SignInPage extends StatefulWidget {
  const SignInPage({super.key,  });

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPasswordVisible = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        leading: BackButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInPage()));},),
      ),
      body: SafeArea(
        //to make page scrollable
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 60,
                          ),
                           TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                            labelText: "Email",
                            enabledBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1), 
                            borderRadius: BorderRadius.circular(18)),
                            focusedBorder:OutlineInputBorder(borderSide: const BorderSide(color: Colors.grey, width: 1,), 
                            borderRadius: BorderRadius.circular(18)),
                           ),obscureText: true,),
                          TextField(
                            controller: passwordController,
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Forgot Password? ',
                          style: TextStyle(color: Colors.white54),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const RegisterPage(),
                              ),
                            );
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontWeight:FontWeight.w600,),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));},
                        child: const Text('Don\'t have an acccount ? Sign up '),
                      )
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
