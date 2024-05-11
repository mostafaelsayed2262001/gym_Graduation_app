import 'package:flutter/material.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:sizer/sizer.dart';

Widget welcomeStaticVerifyWidget(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset("assets/auth/signin.png"),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        child: TextUtils(
            text: "Verify your email",
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700),
      ),
      TextUtils(
        text:
            "please enter the 4 digit code sent to \n${AuthCubit.get(context).ctrlEmail.text}",
        color: Colors.black,
        fontSize: 14.sp,
      ),
      SizedBox(
        height: 3.h,
      )
    ],
  );
}
