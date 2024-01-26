import 'package:flutter/material.dart';
import 'package:projectone/Screens/home.dart';

class profilePage extends StatefulWidget {
  profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 226, 226, 224),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //profile pic
            const Center(
              child: Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 50),
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/images/photo1.jpg"),
                  )),
            ),

            //name
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "Full Name:",
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),

            //E-mail:
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "E-mail:",
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),
              ),
            ),

            //Phone Number:

            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                "Phone Number:",
                style: const TextStyle(
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
