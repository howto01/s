import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App with ListView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Doe'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Jane Smith'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Bob Johnson'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Sarah Lee'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Tom Williams'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Samantha Adams'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('John Doe'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Jane Smith'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Bob Johnson'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Sarah Lee'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Tom Williams'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Samantha Adams'),
            ),
            
          ],
        ),
      ),
    );
  }
}
