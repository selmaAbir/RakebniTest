
import 'package:flutter/material.dart';
import 'package:voiture/screens/login_screen.dart';
// import 'package:voiture/screens/sign_up_screen.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {

  // initially ,show the login page 
  bool showLoginPage = true;

  // togglle between login and register page 
  void togglePage() {
    setState((){
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showLoginPage) {
      return LoginScreen(onTap : togglePage);
    } 
    else {
      return LoginScreen(onTap : togglePage);
    }
  }
}