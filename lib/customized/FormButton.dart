import 'package:flutter/material.dart';

class FormButton extends StatelessWidget{
   final Widget child;
   final Gradient? gradient;
   double width;
   double height;
   final VoidCallback onPressed;

   FormButton({
     Key? key,
     required this.child,
    this.gradient,
    this.width = 300,
    this.height = 50.0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 50.0,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.all(Radius.circular(11))
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
  
}