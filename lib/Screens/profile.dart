import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projectone/Screens/home.dart';

class profilePage extends StatefulWidget {
  final String id;

  String? name;
  String? phone;
  String? email;
  profilePage({super.key, required this.id});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  getData() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Users")
        .where("uid", isEqualTo: widget.id)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      setState(() {
        widget.name = querySnapshot.docs[0]["Name"];
        widget.phone = querySnapshot.docs[0]["Phone_Number"];
        widget.email = querySnapshot.docs[0]["E-mail"];
      });
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

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
                "Full Name: ${widget.name}",
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
                "E-mail: ${widget.email}",
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
                "Phone Number: ${widget.phone}",
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
                              homeScreen(id: widget.id)));
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
