import 'package:flutter/material.dart';
// import 'package:voiture/screens/auth.dart';
// import 'package:voiture/screens/get_started.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:voiture/auth/login_or_register.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runApp( MyApp());

   await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Car Rent',
      debugShowCheckedModeBanner: false,
      home: LoginOrRegister(),
    );
  }
}
      