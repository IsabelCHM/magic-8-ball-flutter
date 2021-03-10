import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey[400],
          appBar: AppBar(
            title: Center(
              child: Text(
                'Ask Me Anything',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            backgroundColor: Colors.blueGrey[700],
          ),
          body: MainImage(),
        ),
      ),
    );

class MainImage extends StatefulWidget {
  @override
  _MainImageState createState() => _MainImageState();
}

class _MainImageState extends State<MainImage> {
  int imageNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: (){
          setState(() {
            imageNo = Random().nextInt(5) + 1;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('images/ball$imageNo.png'),
        ),
      ),
    );
  }
}
