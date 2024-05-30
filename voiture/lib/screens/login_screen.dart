
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:voiture/screens/sign_up_screen.dart';
import 'package:voiture/screens/widgets/button.dart';
import 'package:voiture/screens/widgets/text_field.dart';
// import 'package:voiture/widget/navbar_roots.dart';

//Register now to create a new account and enjoy your upcoming ride
class LoginScreen extends StatefulWidget{
   final Function()? onTap;
   const LoginScreen({ super.key, required this.onTap});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // text editing controllers 
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  // sign in methode
  void SignIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailTextController.text,
      password: passwordTextController.text,
      );
  }
  
  // sign user in 
  void signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailTextController.text,
       password: passwordTextController.text,
       );
  }

  // bool passTogle= true;
@override
Widget build(BuildContext context){
  return Material(
    color:Color.fromARGB(255, 142, 191, 204),
     child: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(25),
              // Logo 
              child: Image.asset("assets/londonCab.png") ,
            ),
             
             // Welcom back message 
          SizedBox(height: 16.0),
            Text(
              'Welcome back !',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,
                color: Color(0xFF000000),
                fontFamily: 'Prompt',
              ),
            ),
            SizedBox(height: 17.0),
            Text(
              'Sign in now to access to your account and the whole features !',
              style: TextStyle(
                fontSize: 13.0,
                color: Color(0xFF828282),
                fontFamily: 'Prompt',
              ),
              textAlign: TextAlign.center,
            ),


             const SizedBox(height: 25),
             // email textified 
              Padding(
              padding: EdgeInsets.all(12),
              child: MyTextField(
                controller: emailTextController,
                 hintText: 'Email', 
                 obscureText: false
                 ),
              ),
            
            // const Padding(
            //   padding: EdgeInsets.all(12),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
                  //champs de username avec son icon 
            //       label:Text("Entrer email"),
            //       prefixIcon: Icon(Icons.mail),              
            //     ),
            //   ),
            // ),
            
            // Password textified 
             
              Padding(
              padding: EdgeInsets.all(12),
              child: MyTextField(
                controller: emailTextController,
                 hintText: 'Password', 
                 obscureText: true,
                 ),
              ),

              // FIRST TRY 
            //  Padding(
            //   padding: const EdgeInsets.all(12),
            //   child: TextField(
            //     obscureText: passTogle ? true: false ,
            //     decoration: InputDecoration(
            //       border: const OutlineInputBorder(),
            //       //champs de username avec son icon 
            //       label:const Text("Entrer Password"),
            //       prefixIcon: const Icon(Icons.lock), 
            //       suffixIcon: InkWell(
            //         onTap: () {
            //           if(passTogle == true){
            //             passTogle = false;
            //           }
            //           else{
            //             passTogle = true;
            //           }
            //           setState(() {});
            //         },
            //         child: passTogle
            //         ? const Icon(CupertinoIcons.eye_slash_fill) 
            //         : const Icon(CupertinoIcons.eye_fill),
            //       )           
            //     ),
            //   ),
            // ),

           // Sign in Button 
           MyButton(
            onTap: (){},
            text: 'Sign In'
            ),

          // go to register page
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a memeber ?",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(255, 140, 143, 140),
                ),
                ),

              const SizedBox(height:20 ,width:4),
              GestureDetector(
                onTap:() {},
                child: Text(
                  "Register now",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[300],
                  ),
                ),
              )
            ],)

            // const SizedBox(height: 20),
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: SizedBox(
            //     width: double.infinity ,
            //     child: Material(
            //               color: Color.fromARGB(255, 70, 169, 212),
            //               borderRadius: BorderRadius.circular(30),

            //               child: InkWell(
            //               onTap:(){
            //              Navigator.push(
            //          context,
            //          MaterialPageRoute(
            //              builder:(context)=> NavBarRoots(),
            //              ));
            //               },
            //               child: const Padding(
            //                 padding:
            //                  EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            //               child:Center(
            //                 child: Text(
            //                   "Log In", style: TextStyle(
            //                                 color: Colors.white,
            //                                 fontSize: 25,
            //                                 fontWeight: FontWeight.bold,
            //                 ),
            //                 ),
            //               ),
            //               ),
            //               ),
            //             ),
            //   ),
            // ), 
            
          ],
        ),
      ),
    ),
  );
 }
}
