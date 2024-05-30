import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
// bonus  pas besoins 
  // List symptoms =

  @override
  Widget build (BuildContext context){
      return SingleChildScrollView(
        padding: EdgeInsets.only(top:40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Welcome Adam",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/adam.jpg"),
              ),
             ],
            ),
            ), 

            SizedBox(height: 30),
            
          ],
        ),
      );
  }
}