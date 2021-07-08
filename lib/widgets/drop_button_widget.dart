import 'package:e_app_1/styles/datail_screen_style.dart';
import 'package:flutter/material.dart';

class DropButton extends StatefulWidget {
  // const DropButton({ Key? key }) : super(key: key);

  final String hintText;
  String ratingController;
  final List<String> item;

  DropButton({this.hintText,this.ratingController,this.item});

  @override
  _DropButtonState createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          )
        ),
        hint: Text(widget.hintText,
        style: DetailScreenStyles.productDropDownValueStyle,
        ),
        value: widget.ratingController,
        items: widget.item.map((e) => DropdownMenuItem(
        child:Text(e),
        value: e,
        )).toList(),
        onChanged: (value){
          setState(() {
            widget.ratingController=value; 
          });
        },
      ),
      
    );
  }
}