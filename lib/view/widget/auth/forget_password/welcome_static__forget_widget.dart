import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:sizer/sizer.dart';

Widget welcomeStaticForgetPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset("assets/auth/forget.png"),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        child: TextUtils(
            text: "Forgot Password",
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700),
      ),
      TextUtils(
        text:
            "please enter your email address to \nrecieve a verification code",
        color: Colors.black,
        fontSize: 14.sp,
      ),
      SizedBox(
        height: 3.h,
      )
    ],
  );
}
