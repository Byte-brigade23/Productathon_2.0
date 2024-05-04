import 'package:coderecet/Pages/Emergency.dart';
import 'package:coderecet/Pages/GetStarted.dart';
import 'package:coderecet/Pages/Home.dart';
import 'package:coderecet/Pages/Profile.dart';
import 'package:coderecet/Pages/graphpg.dart';
import 'package:coderecet/Pages/graphpg2.dart';
import 'package:flutter/material.dart';

class feasible extends StatefulWidget {
  const feasible({ Key? key }) : super(key: key);

  @override
  State<feasible> createState() => _feasibleState(); // Return State here
}

class _feasibleState extends State<feasible>{
   @override
  Widget build(BuildContext context) {
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
              const SizedBox(height: 200.0),
              Text(
                "Feasibility analysis",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,

              ),
            const SizedBox(height: 30.0),
           Text(
                "Based on the given data,it is found that installation of solar panels is feasible",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,
                textAlign: TextAlign.center,

              ),
                const SizedBox(height: 50.0),
              Text(
                "Feasibility analysis",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,

              ),
            const SizedBox(height: 30.0),
           Text(
                "Based on the given data,it is found that installation of solar panels is feasible",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,
                textAlign: TextAlign.center,

              ),
            ],
            ),
          ),
          Positioned(
            bottom: 120.0,
            left: 125.0, 
            child: MaterialButton(
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
          ),
        ],
      ),
    );
  }
}