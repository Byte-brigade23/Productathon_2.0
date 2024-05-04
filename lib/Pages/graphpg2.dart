import 'package:flutter/material.dart';
import 'package:coderecet/Pages/Home.dart';
import 'package:coderecet/Pages/Profile.dart';
import 'package:coderecet/Pages/Login.dart';
import 'package:coderecet/Pages/analysis.dart';




class graphpg2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Graphs generated'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageCard(
            imagePath: 'lib/components/image/bar2 (3).jpg',
            imageName: 'Bar Graph',
          ),
          ImageCard(
            imagePath: 'lib/components/image/bar2 (2).jpg',
            imageName: 'Line Graph',
          ),
        ],
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;
  final String imageName;

  const ImageCard({
    Key? key,
    required this.imagePath,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              imageName,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
