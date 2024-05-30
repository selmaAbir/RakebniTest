import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//  import 'package:voiture/screens/login_screen.dart';
import 'package:voiture/widget/navbar_roots.dart';

class SignUpScreen extends StatefulWidget{
@override
State<SignUpScreen> createState() => _SignUpScreeState();
}
class _SignUpScreeState extends State <SignUpScreen> {
  bool passToggle=true;
  @override
  Widget build(BuildContext context){
    return Material(
      color: const Color.fromARGB(255, 142, 191, 204),
      child: SingleChildScrollView(
        child:SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(padding: EdgeInsets.all(25),
              child: Image.asset("assets/londonCab.png") ,
              ),

              SizedBox(height: 16.0),
            Text(
              'Creat a new account ',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.normal,
                color: Color(0xFF000000),
                fontFamily: 'Prompt',
              ),
            ),

            SizedBox(height: 16.0),
            Text(
              'Sign in now to access to your account and the whole features !',
              style: TextStyle(
                fontSize: 13.0,
                color: Color.fromARGB(255, 99, 99, 99),
                fontFamily: 'Prompt',
              ),
              textAlign: TextAlign.center,
            ),

              SizedBox(height:15),
              Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal:15),
              child: TextField(
                decoration: InputDecoration( 
                  labelText: "Full Name",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                ),
               ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal:15),
              child: TextField(
                decoration: InputDecoration( 
                  labelText: "Email Adress",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail),
                ),
                ),
               ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal:15),
              child: TextField(
                decoration: InputDecoration( 
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
                ),
               ),
                 Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal:15),
              child: TextField(
                obscureText: passToggle ? true: false,
                decoration: InputDecoration( 
                  labelText: "Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: InkWell(onTap: () {
                    if(passToggle==true){
                      passToggle=false;
                    }
                    else{
                      passToggle=true;
                    }
                    setState(() {});
                  },
                   child: passToggle
                     ?Icon(CupertinoIcons.eye_slash_fill)
                     :Icon(CupertinoIcons.eye_fill),
                  ),
                  ),
                ),
              ),
              
                SizedBox(height: 10),
                 Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity ,
                child: Material(
                          color: Color.fromARGB(255, 82, 178, 219),
                          borderRadius: BorderRadius.circular(10),

                          child: InkWell(
                          onTap:(){
                         Navigator.push(
                     context,
                     MaterialPageRoute(
                         builder:(context)=> NavBarRoots(),
                         ));
                          },
                          child: Padding(
                            padding:
                             EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          child:Center(
                            child: Text(
                              "Create Account", style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                            ),
                            ),
                          ),
                          ),
                          ),
                        ),
              ),
            ), 
            Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
            Text( 
              "Already have an account ?",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(184, 118, 118, 118),
              
              ),
            ),
            TextButton(
              onPressed:() {
                  // Navigator.push(
                  //     context,
                  //    MaterialPageRoute(
                  //         builder:(context)=> LoginScreen(),
                  //        ));
            }, 
            child: Text(
              "Log In",
              style: TextStyle( 
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(147, 0, 125, 67),
              ),
            ),
            ),
           ],
            ),
            ],
            ),
          ),
      ),
    );
  }
}
