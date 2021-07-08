import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageRouting{
  static goToNetPage({BuildContext context,Widget navigateTo}){
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>navigateTo ,
      )
    );
  }
}