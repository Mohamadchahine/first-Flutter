import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectone/Screens/Users.dart';
import 'package:projectone/Screens/profile.dart';
import 'package:projectone/Widgets/textfld.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  TextEditingController name = TextEditingController(); //for getting name
  TextEditingController email = TextEditingController(); //for getting email

  TextEditingController username = TextEditingController(); //for getting email
  TextEditingController phonenumber =
      TextEditingController(); //for getting phone number
  TextEditingController pass = TextEditingController(); //for getting password
  TextEditingController cpass = TextEditingController();

  bool varified = true;
  bool varpass = true;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState

    super.setState(fn);
  }

  Future CreateAcoount(
    String email,
    String Username,
    String Name,
    String Phone_Number,
    String password,
    String cpassword,
  ) async {
    try {
      List<String> users = [];
      varified = true;
      varpass = true;

      await FirebaseFirestore.instance.collection("Users").get().then((value) {
        for (var i = 0; i < value.docs.length; i++) {
          users.add(value.docs[i]['Username']);
        }
      });
      if (password != cpassword) {
        setState(() {
          varpass = false;
        });
      }
      if (users.contains(Username) == true || varpass == false) {
        setState(() {
          varified = false;
        });
      } else {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        await FirebaseFirestore.instance
            .collection("Users")
            .doc(userCredential.user!.uid)
            .set({
          "E-mail": email,
          "Username": Username,
          "Name": Name,
          "Phone_Number": Phone_Number,
          "Password": password,
          "uid": userCredential.user?.uid.toString(),
        });
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) =>
                usersScreen(id: userCredential.user!.uid.toString())));
        return userCredential;
      }
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
          Image.asset("assets/images/photo1.jpg"),
          //name
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: textfld(
                label: "First Name",
                controller: name,
                obscure: false,
                iconn: Icon(Icons.person),
              )),

          //email
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: textfld(
                label: "E-mail:",
                controller: email,
                obscure: false,
                iconn: Icon(Icons.mail),
              )),

          //username
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: textfld(
                label: "Username:",
                controller: username,
                obscure: false,
                iconn: Icon(Icons.person),
              )),

          //phone
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: textfld(
                label: "Phone number:",
                controller: phonenumber,
                obscure: false,
                iconn: Icon(Icons.phone),
              )),
          //pass
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: textfld(
                label: "Password:",
                controller: pass,
                obscure: true,
                iconn: Icon(Icons.visibility_off),
              )),
          //confpass
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: textfld(
              label: "Confirm Password:",
              controller: cpass,
              obscure: true,
              iconn: Icon(Icons.visibility_off),
            ),
          ),
          varified == false
              ? const Center(
                  child: Text(
                    "Couldnt create account",
                    style: TextStyle(color: Colors.red, fontSize: 15),
                  ),
                )
              : Container(),

          varpass == false
              ? const Center(
                  child: Text(
                    "Password doesnt match",
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
                    CreateAcoount(email.text, username.text, name.text,
                        phonenumber.text, pass.text, cpass.text);
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
