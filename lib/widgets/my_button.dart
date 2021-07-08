import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // const MyButton({ Key? key }) : super(key: key);
  final String text;
  final Color color;
  final Function onPress;

  MyButton({this.text,this.color,this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        height: 45,
        elevation: 0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide.none
        ),
        onPressed: onPress,
        child: Text(text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),
        ),
      ),
    );
  }
}