import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {

  final String hintText;
  bool obscureText=false;
  MyTextFormField({this.hintText,this.obscureText});

  // const TextFormField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ) ,
      child: TextFormField(
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.green[100],
          filled: true,
          hintText: hintText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          )
        ),
  ),      
      );
      
  }
}