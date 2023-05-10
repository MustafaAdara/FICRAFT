import 'package:flutter/material.dart';

Widget DefaultButton({
  double width = 200,
  Color backgroundColor = Colors.red,
  double radius = 0.0,
  required VoidCallback onPress,
  required String text,
  Gradient? gradient,
})=> Container(

  width: width,

  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    gradient: gradient,
    color: backgroundColor,
  ),

  child: ElevatedButton(
    onPressed: onPress,
    child: Text(
      text,
      style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    ),
  ),
);