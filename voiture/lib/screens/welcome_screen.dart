// import 'package:flutter/material.dart';
// import 'package:voiture/screens/login_screen.dart';
// import 'package:voiture/widget/navbar_roots.dart';
// import 'package:voiture/screens/sign_up_screen.dart';


// class WelcomeScreen extends StatelessWidget{
//   @override 
//   Widget build(BuildContext context){
//     return Material(
//   child : Container( 
//   width: MediaQuery.of(context).size.width,
// height: MediaQuery.of(context).size.height,
// padding: EdgeInsets.all(10),
// child:Column( 
//   children:[
//     SizedBox(height:15),
//     Align(alignment: Alignment.centerRight,child:TextButton( 
//       onPressed:(){
//         Navigator.push(context,MaterialPageRoute(
//           builder:(context)=> NavBarRoots(),
//        ));
//       },
//       child:Text(
//         "SKIP",
//         style: TextStyle( 
//         color: Color.fromARGB(255, 101, 173, 214),
//         fontSize: 20,

//         ),
        
        
//         ),

//     ),
//     ),
//     SizedBox(height: 50),
//     Padding(
//       padding: EdgeInsets.all(20),
//       //image assets
//       child: Image.asset("assets/carT.png"),
//     ),
//     SizedBox(height: 50),
//     Text("car",
//     style: TextStyle( 
//       color: Color.fromARGB(255, 102, 216, 222),
//       fontSize: 35,
//       fontWeight: FontWeight.bold,
//       letterSpacing: 1,
//       wordSpacing: 2
//     ),
//     ),
//     SizedBox(height: 10),
//      Text("Welcome te Rakbeni car ",
//     style: TextStyle( 
//       color: Color.fromARGB(255, 2, 1, 9),
//       fontSize: 18,
//       fontWeight: FontWeight.w500,
      
//     ),
//     ),
//     SizedBox(height: 60),
//     Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Material(
//           color: Color.fromARGB(255, 101, 180, 214),
//           borderRadius: BorderRadius.circular(10),
//           child: InkWell(
//           onTap:(){
//           Navigator.push(context,MaterialPageRoute(
//           builder:(context)=> LoginScreen(),
//           ));
//           },
//           child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
//           child:Text("Log In", style: TextStyle(
//             color: Colors.white,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//           ),
//           ),
//         ),
//            Material(
//           color: Color.fromARGB(255, 118, 180, 214),
//           borderRadius: BorderRadius.circular(10),
//           child: InkWell(
//           onTap:(){
//           Navigator.push(
//                       context,
//                      MaterialPageRoute(
//                           builder:(context)=> SignUpScreen(),
//                          ));
//           },
//           child: Padding(padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
//           child:Text(
//             "Sign Up",
//              style: TextStyle(
//             color: Colors.white,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//           ),
//           ),
//           ),
        
//            ),
//       ],
//     ),
//   ],
// ),

//   ),





//     );
//   }
// }