import 'package:flutter/material.dart';


void main() {

  runApp(const MyApp());

}


class MyApp extends StatelessWidget {

  const MyApp({super.key});


  // This widget is the root of your application.

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter Exp1 ',

      theme: ThemeData(


        primarySwatch: Colors.blue,

      ),

      home: const MyHomePage(title: 'Flutter Exp1'),

    );

  }

}


class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});




  final String title;


  @override

  State<MyHomePage> createState() => _MyHomePageState();

}


class _MyHomePageState extends State<MyHomePage> {




  @override

  Widget build(BuildContext context) {


    return Scaffold(

      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by

        // the App.build method, and use it to set our appbar title.

        title: Text(widget.title),

      ),

      body: Column(

      children: [

        Text('Hello World !! Welcome')

      ],


      ),

       // This trailing comma makes auto-formatting nicer for build methods.

    );

  }

}