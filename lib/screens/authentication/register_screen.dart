import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_tip/shared/components/custom_textField.dart';
import 'package:master_tip/shared/components/custon_appbar.dart';
import 'package:master_tip/shared/components/main_Button.dart';
import 'package:master_tip/shared/components/title-text.dart';
import 'package:master_tip/shared/constants.dart';

class RegisterScreen extends StatelessWidget {
  TextEditingController emialController =TextEditingController();
  TextEditingController codeController =TextEditingController();
  TextEditingController phoneController =TextEditingController();
  TextEditingController nameController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(hzPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Center(
              child: Text(
                "Create account",textAlign: TextAlign.center,style: TextStyle(fontSize: 22,color: titleColor),),
            ),
            SizedBox(height: 90.h,),
            TitleText("User name"),
          SizedBox(height:10.h),
          CustomTextField(controller:nameController ,hint: "Type here",)
          ,SizedBox(height: 20.h,),
          TitleText("Email"),
          SizedBox(height:10.h),
          CustomTextField(controller:emialController ,hint: "ex user@gmail.com",),
          SizedBox(height: 20.h,),
          TitleText("phone"),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Container(
                  width: 70.w,
                  child: CustomTextField(
                    controller: codeController,
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
      MainButton(text: "Register", function: (){})
        ],
      ),
          )),
      appBar: CustomAppBar(title: "", context: context),

    );
  }
}
