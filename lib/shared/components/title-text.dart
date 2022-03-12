import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget{
  String text;
  TitleText(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Text(text,style: TextStyle(fontWeight: FontWeight.bold),);
  }
}