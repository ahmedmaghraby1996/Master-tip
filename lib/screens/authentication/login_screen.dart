import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_tip/screens/authentication/otp_screen.dart';
import 'package:master_tip/screens/authentication/register_screen.dart';
import 'package:master_tip/shared/components/custom_textField.dart';
import 'package:master_tip/shared/components/main_Button.dart';
import 'package:master_tip/shared/constants.dart';
import 'package:master_tip/shared/components/title-text.dart';
import 'package:master_tip/shared/nav.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController CodeController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: hzPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: .5.sh,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: SvgPicture.asset("assets/images/logo.svg"))
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText("phone"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 70.w,
                          child: CustomTextField(
                            controller: CodeController,
                            maxLength: 4,
                          )),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                          child: CustomTextField(controller: phoneController)),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  MainButton(text: "login", function: ()=>navigateTo(context, OtpScreen())),
                  SizedBox(height: 30.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/ic_facebook.svg"),
                      SizedBox(width: 20.w,),
                      SvgPicture.asset("assets/images/ic_google.svg"),
                      SizedBox(width: 20.w,),
                      SvgPicture.asset("assets/images/ic_apple.svg")
                    ],
                  ) ,
                  SizedBox(height: 100.h,),
                  Center(child: Text("Don't have an account?",style: TextStyle(color: Color(0xFF707070),),textAlign: TextAlign.center,)),
                  SizedBox(height: 10.h,),
                  Center(
                    child: GestureDetector(
                        child: Text("Create account", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                        onTap: () =>navigateTo(context, RegisterScreen())
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
