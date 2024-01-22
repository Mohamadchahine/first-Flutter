import 'package:flutter/material.dart';
import 'package:projectone/Screens/profile.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Image.network(
              "https://media.istockphoto.com/id/1207217852/vector/programming-testing-app-on-different-devices-creation-software-and-coding-internet-pages-for.jpg?s=612x612&w=0&k=20&c=84TPoTRyO589B5rh1WvW0EQDbbPN_0ITkMsAO5ENz2g="),

          //name
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text(
              "Full Name:",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text(
                    "Full Name",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),

          //email

          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "E-mail:",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text(
                    "E-mail",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),

          //phone
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Phone Number:",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              decoration: InputDecoration(
                  label: Text(
                    "Phone Number",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          //pass
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              "Password:",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.remove_red_eye),
                  label: Text(
                    "Password",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          //confpass

          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Text(
              "Confirm Password:",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.remove_red_eye),
                  label: Text(
                    "Password",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
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
                            const profilePage()));
                  },
                  child: const Text(
                    "Join Now",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
