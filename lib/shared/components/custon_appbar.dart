import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:master_tip/shared/constants.dart';

AppBar CustomAppBar ({required String title,required BuildContext context}){
  return AppBar(
    title:Text(title) ,
backgroundColor: Colors.white,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 22,color: titleColor),
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(onTap: ()=>Navigator.pop(context),child: SvgPicture.asset("assets/images/Back.svg"),),
    ),
  );
}
