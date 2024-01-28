import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projectone/Screens/profile.dart';
import 'package:projectone/Widgets/userlist.dart';

class usersScreen extends StatefulWidget {
  final String id;
  const usersScreen({super.key, required this.id});

  @override
  State<usersScreen> createState() => _usersScreenState();
}

class _usersScreenState extends State<usersScreen> {
  List<QueryDocumentSnapshot> data = [];

  getData() async {
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection("Users")
        .where("uid", isNotEqualTo: widget.id)
        .get();

    data.addAll(querySnapshot.docs);
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text("Users"),
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 15,
              mainAxisExtent: 150,
            ),
            itemBuilder: (context, i) {
              return userList(
                  Name: "${data[i]['Name']}",
                  Phone: "${data[i]['Phone_Number']}",
                  Email: "${data[i]['E-mail']}");
            }),
      ),
    );
  }
}
