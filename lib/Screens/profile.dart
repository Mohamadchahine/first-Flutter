import 'package:flutter/material.dart';
import 'package:projectone/Screens/home.dart';

class profilePage extends StatefulWidget {
  final String name;
  final String email;
  final String phone;
  profilePage({required this.name, required this.email, required this.phone});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 226, 224),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //profile pic
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0, bottom: 50),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1207217852/vector/programming-testing-app-on-different-devices-creation-software-and-coding-internet-pages-for.jpg?s=612x612&w=0&k=20&c=84TPoTRyO589B5rh1WvW0EQDbbPN_0ITkMsAO5ENz2g="),
                ),
              ),
            ),

            //name
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "Full Name:" + widget.name,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),

            //E-mail:
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "E-mail:" + widget.email,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),

            //Phone Number:

            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "Phone Number:" + widget.phone,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 68, 67, 66)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const homeScreen()));
                    },
                    child: const Text(
                      "Home Screen",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
