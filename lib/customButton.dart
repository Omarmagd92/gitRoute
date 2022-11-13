import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  String text;
   Function buttonClicked;
 CustomButton(this.text,this.buttonClicked);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:()=>buttonClicked(text) , child: Text(text,style: TextStyle(fontSize: 24)),
      style: ElevatedButton.styleFrom(
          primary:Colors.blue ,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),
          ) ),);
  }
}
