import 'package:coderecet/Pages/Emergency.dart';
import 'package:coderecet/Pages/GetStarted.dart';
import 'package:coderecet/Pages/Home.dart';
import 'package:coderecet/Pages/Profile.dart';
import 'package:coderecet/Pages/analysis.dart';
import 'package:coderecet/Pages/feasible.dart';
import 'package:coderecet/Pages/graphpg.dart';
import 'package:coderecet/Pages/graphpg2.dart';
import 'package:coderecet/Pages/signup_screen.dart';
import 'package:coderecet/reusable_widget/reusable_widget.dart';
import 'package:coderecet/utils/color_util.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
        hexStringToColor("FFD700"),
        hexStringToColor("FFA07A"),
        hexStringToColor("FF6F61"),
      ],
      begin: Alignment.topCenter, end: Alignment.bottomCenter
      ),),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery.of(context).size.height *0.25, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("lib/components/image/logo.jpg"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Username", Icons.person_outline,
                    false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password",
                    Icons.lock, true, _passwordTextController),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, (){
                    Navigator.push(context,
                         MaterialPageRoute(builder: (context)=> const analysis()));
                }),
                signUpOption(),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [const Text("Dont have account?", style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,),),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));
        },
        child: const Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontWeight:
            FontWeight.bold,),
        ),
      ),
      ],
    );
  }
}
