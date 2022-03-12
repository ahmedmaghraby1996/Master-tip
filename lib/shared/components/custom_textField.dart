import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  TextEditingController controller;
  int ? maxLength;
  String? hint;
  CustomTextField({required this.controller, this.maxLength,this.hint});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      controller:controller ,
maxLength:maxLength?? null,

      decoration:  InputDecoration(
        hintText: hint??"",
          counter: SizedBox.shrink(),
        border: OutlineInputBorder(
        borderSide:   new BorderSide(color: Color(0xFFE5E5E5), ),
    borderRadius: BorderRadius.circular(10.0)),
      enabledBorder: OutlineInputBorder(
        borderSide:   new BorderSide(color: Color(0xFFE5E5E5), ),
          borderRadius: BorderRadius.circular(10.0),
    ),
      ),

    );
  }

}