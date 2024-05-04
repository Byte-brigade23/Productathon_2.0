
import 'package:coderecet/Pages/Home.dart';
import 'package:coderecet/Pages/analysis.dart';
import 'package:coderecet/reusable_widget/reusable_widget.dart';
import 'package:flutter/material.dart';


import '../utils/color_util.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _userNameTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          hexStringToColor("FFD700"),
          hexStringToColor("FFA07A"),
          hexStringToColor("FF6F61"),
        ],
            begin: Alignment.topCenter, end: Alignment.bottomCenter
        ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20,
                MediaQuery.of(context).size.height*0.25,
                20,
                0,),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Username",
                    Icons.person_outline,
                    false,
                    _userNameTextController,
                ),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Email ID", Icons.person_outline, false, _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_clock_outlined, true, _passwordTextController,),
                const SizedBox(
                  height: 20,
                ),
                signInSignUpButton(
                  context,
                  false,
                    (){
                      Navigator.push(context,
                         MaterialPageRoute(builder: (context)=> const analysis()));

                      // FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailTextController.text, password: _passwordTextController.text).then((value)  {
                      //   print("Created New Account");
                      //   Navigator.push(context,
                      //   MaterialPageRoute(builder: (context)=> const Home())
                      //   );
                      // }).onError((error, StackTrace){

                      //   print("Error ${error.toString()}");

                      // });
                      
                    },
                ), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
