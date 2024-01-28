import 'package:flutter/material.dart';
import 'package:projectone/Screens/profile.dart';

class homeScreen extends StatefulWidget {
  final String id;
  const homeScreen({super.key, required this.id});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>
                      profilePage(id: widget.id)));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [],
      )),
    );
  }
}
