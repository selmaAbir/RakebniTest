import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:voiture/auth/login_or_register.dart';
import 'package:voiture/screens/home_screen.dart';
// import 'package:voiture/screens/login_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user logged in
          if(snapshot.hasData){
            return HomeScreen();
          }

          // user is NOT logged in 
          else{
            return const LoginOrRegister ();
          }
        },
      ),
    );
  }
}