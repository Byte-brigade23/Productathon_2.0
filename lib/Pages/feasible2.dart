import 'package:coderecet/Pages/Emergency.dart';
import 'package:coderecet/Pages/GetStarted.dart';
import 'package:coderecet/Pages/Home.dart';
import 'package:coderecet/Pages/Profile.dart';
import 'package:coderecet/Pages/graphpg.dart';
import 'package:coderecet/Pages/graphpg2.dart';
import 'package:flutter/material.dart';

class feasible2 extends StatefulWidget {
  const feasible2({ Key? key }) : super(key: key);

  @override
  State<feasible2> createState() => _feasible2State(); // Return State here
}

class _feasible2State extends State<feasible2>{
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detailed Report'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_add_alt),
            color: Colors.blue,
            tooltip: 'Navigate to Profile',
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => Profile()));
            },
          ),
          
        ],
      ),
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
              const SizedBox(height: 100.0),
              Text(
                "Feasibility analysis",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,

              ),
            const SizedBox(height: 20.0),
           Text(
                "Based on the given data,it is found that installation of solar panels is feasible",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,
                textAlign: TextAlign.center,

              ),
                const SizedBox(height: 50.0),
              Text(
                "Data on energy generation",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,

              ),
            const SizedBox(height: 20.0),
           Text(
                "The maximum energy that can be derived is calculated to be 8kWh/m²/day",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,
                textAlign: TextAlign.center,

              ),
                const SizedBox(height: 50.0),
              Text(
                "Number of Panels Required",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,

              ),
            const SizedBox(height: 20.0),
           Text(
                "According to the area you can install 10 panels",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,
                textAlign: TextAlign.center,

              ),
              const SizedBox(height: 50.0),
              Text(
                "Approximate cost estimation ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,

              ),
            const SizedBox(height: 20.0),
           Text(
                "The initial investment cost is calculated to be 80,000/- ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: Checkbox.width),
                selectionColor: Colors.black,
                textAlign: TextAlign.center,

              ),
            ],
            ),
          ),
         
        ],
      ),
    );
  }
}