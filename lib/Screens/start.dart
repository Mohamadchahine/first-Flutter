import 'package:flutter/material.dart';
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
      body: Center(
          child: Column(
        children: [
          Image.network(
              "https://media.istockphoto.com/id/1207217852/vector/programming-testing-app-on-different-devices-creation-software-and-coding-internet-pages-for.jpg?s=612x612&w=0&k=20&c=84TPoTRyO589B5rh1WvW0EQDbbPN_0ITkMsAO5ENz2g="),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Welcome to the world of Programmers",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
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
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 68, 67, 66)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const signUp()));
              },
              child: const Text(
                "Join Now",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      )),
    );
  }
}
