import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: MyFlutterUI(),
    );
  }
}

class MyFlutterUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter UI'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(16.0),
            child: Text(
              'Welcome to my Flutter UI!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
          Container(
            margin: EdgeInsets.all(16.0),
            child: Text(
              'Thanks for checking it out!',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}