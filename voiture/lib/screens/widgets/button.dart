import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  const MyButton({super.key,
  required this.onTap,
  required this.text
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        decoration:  BoxDecoration(
          color:Color.fromARGB(255, 79, 180, 252),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child:Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              ),
            ),
        ),
      ),
    );
  }
}