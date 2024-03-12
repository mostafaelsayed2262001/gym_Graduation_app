import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:sizer/sizer.dart';

Widget welcomeStaticSignIn(){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Image.asset("assets/auth/signin.png"),
    Padding(
      padding:  EdgeInsets.symmetric(vertical: 1.h),
      child: TextUtils(text: "Welcome",color:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w700),
    ),
    TextUtils(text: "Login to your account",color:Colors.black,fontSize: 14.sp,),
    SizedBox(height: 3.h,)],);
}