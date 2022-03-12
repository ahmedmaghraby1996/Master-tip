import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:master_tip/shared/components/main_Button.dart';
import 'package:master_tip/shared/components/title-text.dart';
import 'package:master_tip/shared/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(hzPadding),
        child: Column(
          children: [
            SizedBox(
              height: .2.sh,
            ),
            Center(
              child: Text(
                "Verify your number",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, color: titleColor),
              ),


            ),
            SizedBox(height: 10.h,),
            Center(child: Text("we'll text you on 01013243123",style: TextStyle(color: Color(0xFF707070),),textAlign: TextAlign.center,)),
            SizedBox(height: 30.h,),
            Container(
              width: .60.sw,
              child: PinCodeTextField(
                appContext: context,

                length: 4,
                obscureText: false,


                blinkWhenObscuring: true,
                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 3) {
                    return "I'm from validator";
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.circle,
disabledColor: Colors.grey,inactiveColor: Colors.grey.shade200,
inactiveFillColor: Colors.grey.shade200,
activeColor: Colors.white,

                  activeFillColor: Colors.white,
                ),
                cursorColor: Colors.black,
                animationDuration: Duration(milliseconds: 300),
                enableActiveFill: true,
textStyle: TextStyle(fontSize: 30),
                keyboardType: TextInputType.number,

                onCompleted: (v) {
                  print("Completed");
                },
                // onTap: () {
                //   print("Pressed");
                // },

                beforeTextPaste: (text) {
                  print("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                }, onChanged: (String value) {  },
              ),
            ),
            SizedBox(height: 20.h,),
            Text("Send me a new code"),
            SizedBox(height: 50.h,),
            MainButton(text: "Confirm", function: (){})
          ],
        ),
      )),
    );
  }
}
