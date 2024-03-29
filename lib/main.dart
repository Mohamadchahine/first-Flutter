import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:projectone/Screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: splashScreen(),
    );
  }
}
