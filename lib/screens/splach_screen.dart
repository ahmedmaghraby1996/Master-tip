import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_tip/screens/authentication/login_screen.dart';
import 'package:master_tip/shared/nav.dart';

class SplachScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
return SplachSceenState();
  }
}
class SplachSceenState extends State<SplachScreen>{
  @override
  void initState() {
   Timer(Duration(seconds: 5), ()=>navigateReplacementTo(context, LoginScreen()));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print(1.sh);
    print(1.sw);
return Scaffold(
  body: Center(child: SvgPicture.asset("assets/images/logo.svg",),),
);
  }
}