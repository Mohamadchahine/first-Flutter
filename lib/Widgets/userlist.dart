import 'package:flutter/material.dart';

class userList extends StatefulWidget {
  final String Name;
  final String Phone;
  final String Email;
  const userList(
      {super.key,
      required this.Name,
      required this.Phone,
      required this.Email});

  @override
  State<userList> createState() => _userListState();
}

class _userListState extends State<userList> {
  @override
  Widget build(BuildContext context) {
    return Card(child: Row(children: [
        Container(
          height: 100,
          width: 100,
          child: Image.asset(
            "assets/images/img2.webp",
            height: 100,
            width: 100,
          ),
        ),
        Column(
          children: [
            Text(
              "Name: " + widget.Name,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "E-mail: " + widget.Email,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Phone: " + widget.Phone,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        )
      ]),
    );
  }
}
