import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectone/Screens/profile.dart';
import 'package:projectone/Widgets/textfld.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController email = TextEditingController(); //for getting email
  TextEditingController pass = TextEditingController(); //for getting password

  bool varified = true;

  Future SignIn(String email, String password) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      User? user = userCredential.user;
      Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => profilePage()));
      return userCredential;
    } on FirebaseAuthException catch (e) {
      setState(() {
        varified = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          Image.asset("assets/images/img2.webp"),

          //email

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: textfld(
                    label: "E-mail:",
                    controller: email,
                    iconn: Icon(Icons.mail),
                    obscure: false)),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: textfld(
                    label: "Password:",
                    controller: pass,
                    iconn: Icon(Icons.visibility_off),
                    obscure: true)),
          ),
          const SizedBox(
            height: 15,
          ),
          varified == false
              ? const Center(
                  child: Text(
                    "Invalid Email or Password",
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                )
              : Container(),
          const SizedBox(
            height: 15,
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
                    SignIn(email.text, pass.text);
                  },
                  child: const Text(
                    "Login Now",
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
