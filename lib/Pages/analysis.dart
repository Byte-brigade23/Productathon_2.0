import 'package:coderecet/Pages/Emergency.dart';
import 'package:coderecet/Pages/GetStarted.dart';
import 'package:coderecet/Pages/Home.dart';
import 'package:coderecet/Pages/Profile.dart';
import 'package:coderecet/Pages/feasible.dart';
import 'package:coderecet/Pages/graphpg.dart';
import 'package:coderecet/Pages/graphpg2.dart';
import 'package:flutter/material.dart';

class analysis extends StatefulWidget {
  const analysis({ Key? key }) : super(key: key);

  @override
  State<analysis> createState() => _analysisState(); // Return State here
}

class _analysisState extends State<analysis>{
   @override
  Widget build(BuildContext context) {
    final ButtonStyle style = 
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/components/image/bg.jpg"),
                  fit: BoxFit.cover,
 
                ),
              ),
            ),
          ),
           /*Positioned(TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
             labelText: 'Enter longitude',
            ),
          ),),*/
          Center(



            child:Column(
            children:<Widget>[
              const SizedBox(height: 150.0),
              TextFormField(
              decoration:  const InputDecoration(
                border:UnderlineInputBorder(),
                labelText: 'Enter longitude',
              ),
            ),
            const SizedBox(height: 30.0),
            TextFormField(
              decoration:  const InputDecoration(
                border:UnderlineInputBorder(),
                labelText: 'Enter latitude',
              ),
            ),
            ],
            ),
          ),
          Positioned(
            bottom: 120.0,
            left: 50.0, 
            child:Row( 
              mainAxisSize: MainAxisSize.min,

              children: <Widget>[MaterialButton(
              onPressed: () { 
                print('Context: $context'); 
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => graphpg()));
              },
              onLongPress: () {
                print('Context: $context'); 
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => graphpg2()));
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: const Text(
                'Generate',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 110, 158, 136),
                ),
              ),
            ),
            const SizedBox(width: 20.0,),
            MaterialButton(
              color: Colors.white,
              onPressed: () {
                print('Context: $context'); 
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => feasible()));
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: const Text(
                'Check Feasibility',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 110, 158, 136),
                ),
              ),
              ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}