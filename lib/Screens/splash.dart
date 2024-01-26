import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projectone/Screens/start.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => const startScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splashphoto.webp"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Text(
          "Welcome!",
          style: TextStyle(
              color: Colors.white, fontSize: 70, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
