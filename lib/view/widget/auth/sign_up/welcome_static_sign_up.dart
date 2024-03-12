import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:sizer/sizer.dart';

Widget welcomeStaticSignUp(){
  return Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Image.asset("assets/auth/signup.png"),
    Padding(
      padding:  EdgeInsets.symmetric(vertical: 1.h),
      child: TextUtils(text: "Hi",color:Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w700),
    ),
    TextUtils(text: "Create a new account",color:Colors.black,fontSize: 14.sp,),
    SizedBox(height: 3.h,)],);
}