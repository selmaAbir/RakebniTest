import 'package:voiture/colors.dart';
import 'package:voiture/screens/login_screen.dart';
// import 'package:voiture/screens/welcome_screen.dart';
import 'package:voiture/screens/widgets/background_image.dart';
import 'package:voiture/screens/widgets/car_description.dart';
// import 'package:voiture/screens/widgets/title_text.dart';
// import 'package:voiture/screens/login_screen.dart';
// import 'package:voiture/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return  Scaffold(
      body:Column(
        children: [
          const BackgroundImage(),
          const SizedBox(
            height: 16,
            ),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
                children: [
                  Container(
                  width: size.width,
                  //l'espace entre le box de mot
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color:backgroundColor,
                    borderRadius: 
                      BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                  ),
                    child: Column(
                      //some Stuff for adjustment of button 
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround ,
                      children:[
                        //emplacement d'écriture top buttom it depends on the 0.?
                        SizedBox( height: size.height*0.15,
                        ),
                        const CarDescription(),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                 MaterialPageRoute(
                                    builder:(context)=> LoginScreen(onTap: () {  },),
                              ));
                             },                         
                           style:ElevatedButton.styleFrom(
                            fixedSize: Size(size.width, size.height*0.08), 
                            //backgroundcolor of the button get started 
                            backgroundColor: Color.fromARGB(211, 15, 198, 97),

                            //shape of the box of the get Started button 
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                            ),


                          // change color of écriture li el da5el 
                           child: Text("Get Started",
                           style: Theme.of(context)
                           .textTheme
                           .headlineSmall!
                           .copyWith(
                            color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                           ),
                    ],
                  ),
                 ),
                  Positioned(
                    top: -size.height *0.5*0.7,
                    left: -size.height *0.5*1,
                     child: SizedBox(
                    height: size.height *0.5,
                      child: Image.asset("assets/carT.png"),
                  ))
              ],
              )
          )
        ],
      ),
    );
  }
}


          
          





// @override
//   Widget build(BuildContext context) {
//     var size= MediaQuery.of(context).size;
//     return  Scaffold(
//       body:Column(
//         children: [ 
//           const BackgroundImage(),
//           Stack(
//             children: [Container(
//               width: size.width,
             
//               decoration: BoxDecoration(color:backgroundColor),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }