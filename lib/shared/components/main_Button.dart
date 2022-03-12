import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget{
  String text;
  Function function;
  MainButton({required this.text,required this.function});
  @override
  Widget build(BuildContext context) {
return Container(width: 1.sw,child: InkWell(onTap:()=> function(),child: Container(child: Padding(
  padding: const EdgeInsets.all(10),
  child:   Text(text,textAlign: TextAlign.center,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
),decoration: BoxDecoration(color: Color(0xFF017AB8),borderRadius: BorderRadius.circular(20)),)));
  }
}