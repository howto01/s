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
title: 'Flutter Demo',
theme: ThemeData(
primarySwatch: Colors.amber,
),
home: const MyHomePage(title: 'Login Page'),
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
String name = " ";
String pass = " ";
bool changebutton = false;
final _formkey = GlobalKey<FormState>();
animate(BuildContext context) async {
if (_formkey.currentState!.validate()) {
setState(() {
changebutton = true;
});
await Future.delayed(Duration(seconds: 1));
setState(() {
changebutton = false;
});
}
}
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text(widget.title),
),
body: SingleChildScrollView(
child: Form(
key: _formkey,
child: Column(
// ignore: prefer_const_literals_to_create_immutables
children: [
Image.asset(
"assets/img/profile(1).png",
height: 200,
width: 275,
),
SizedBox(height: 20),
Text(
"Welcome $name",
style: TextStyle(
fontSize: 20,
color: Colors.black,
fontWeight: FontWeight.normal),
),
SizedBox(height: 20),
Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
TextFormField(
decoration: InputDecoration(
hintText: "Enter UserName",
labelText: "UserName "),
validator: (value) {
if (value!.isEmpty) {
return "Username cannot be empty";
}
return null;
},
onChanged: (value) {
name = value;
setState(() {});
},
),
TextFormField(
obscureText: true,
decoration: InputDecoration(
hintText: "Enter Password",
labelText: "Password "),
validator: (value) {
if (value!.isEmpty) {
return "Password cannot be empty";
} else if (value.length < 8) {
return " Password length should be atleast 8";
}
return null;
},
onChanged: (value) {
pass = value;
setState(() {});
},
),
SizedBox(
height: 20,
),
InkWell(
onTap: () => {animate(context), print(name), print(pass)},
child: AnimatedContainer(
duration: Duration(seconds: 1),
width: changebutton ? 50 : 150,
height: 50,
alignment: Alignment.center,
child: changebutton
? Icon(Icons.done, color: Colors.white)
: Text(
"Login",
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold),
),
decoration: BoxDecoration(
color: Colors.amber,
borderRadius: BorderRadius.circular(
changebutton ? 50 : 8),
)),
)
],
),
)
]),
),
),
);
}
}