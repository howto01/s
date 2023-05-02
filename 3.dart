import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      home: MyButtonDemo(),
    );
  }
}



class MyButtonDemo extends StatefulWidget {
  @override
  _MyButtonDemoState createState() => _MyButtonDemoState();
}

class _MyButtonDemoState extends State<MyButtonDemo> {
  String _message = '';

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Message Box'),
          content: Text('You pressed the button!'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = 'You pressed the button!';
                });
                _showDialog();
              },
              child: Text('Press Me!'),
            ),
            SizedBox(height: 16.0),
            IconButton(
              onPressed: () {
                setState(() {
                  _message = 'You pressed the icon button!';
                });
                _showDialog();
              },
              icon: Icon(Icons.add_circle),
              iconSize: 48.0,
            ),
            SizedBox(height: 16.0),
            Text(
              _message,
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}