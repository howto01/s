create firebase project in firebase
to link firebase with flutter click on the andriod icon to link

go to andriod and then app and then build gradle and copy the application id from that and paste it in firebase andriod package.name

and click on register app

after that download giogle-services.json 

and drag it inside andriod>app folder

click next   


classpath 'com.google.gms:google-services:4.3.15'

paste the above line in andriod>buildgradle  dependencies


apply pulgin : 'com.google.gms.google-services'

paste the above line in andriod>app>buildgradle  at the end

minSdkVersion 21

paste the above line in andriod>app>buildgradle  below application id and remove minsdkversion


 pubspec

cloud_firestore : ^3.1.5



goto firebase>build>firestore databse and get started it 




import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';


Future main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MyApp());

}


class MyApp extends StatelessWidget {

  const MyApp({super.key});


  // This widget is the root of your application.

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter Demo',

      theme: ThemeData(

        // This is the theme of your application.

        //

        // Try running your application with "flutter run". You'll see the

        // application has a blue toolbar. Then, without quitting the app, try

        // changing the primarySwatch below to Colors.green and then invoke

        // "hot reload" (press "r" in the console where you ran "flutter run",

        // or simply save your changes to "hot reload" in a Flutter IDE).

        // Notice that the counter didn't reset back to zero; the application

        // is not restarted.

        primarySwatch: Colors.blue,

      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),

    );

  }

}


class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});


  // This widget is the home page of your application. It is stateful, meaning

  // that it has a State object (defined below) that contains fields that affect

  // how it looks.


  // This class is the configuration for the state. It holds the values (in this

  // case the title) provided by the parent (in this case the App widget) and

  // used by the build method of the State. Fields in a Widget subclass are

  // always marked "final".


  final String title;


  @override

  State<MyHomePage> createState() => _MyHomePageState();

}


class _MyHomePageState extends State<MyHomePage> {

  final controller = TextEditingController();

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: TextField(

          controller: controller,

        ),

        actions: [

          IconButton(

            icon: Icon(Icons.add),

            onPressed: () {

              final name = controller.text;


              createUser(name: name);

            },

          )

        ],

      ), // This trailing comma makes auto-formatting nicer for build methods.

    );

  }


  Future createUser({required String name}) async {

     final docUser = FirebaseFirestore.instance.collection('users').doc('my-id');

    final json = {

      'name': name,

      'age': 21,

      'birthday': DateTime(2001, 7, 21),

    };

    // await docUser.set(json);

  }

}


