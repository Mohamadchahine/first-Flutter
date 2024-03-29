import 'package:flutter/material.dart';
import 'package:projectone/Screens/login.dart';
import 'package:projectone/Screens/signup.dart';

class startScreen extends StatefulWidget {
  const startScreen({super.key});

  @override
  State<startScreen> createState() => _startScreenState();
}

class _startScreenState extends State<startScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset("assets/images/photo1.jpg"),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Welcome to the world of Programmers",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "We are working on getting all programmers in contact together in this community, where they can share experience and may get some jobe offers,so what are you waiting for! press the button below and join our the Community!!!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      )),
    );
  }
}
