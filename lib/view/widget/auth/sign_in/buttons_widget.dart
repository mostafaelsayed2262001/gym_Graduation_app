import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/view/screen/auth/sign_up_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../../utils/themes.dart';
import '../../text_utiles.dart';

Widget buttonsSignInWidget(){
  return Column(children: [Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: 10),
      alignment: AlignmentDirectional.centerEnd,
      child: InkWell(
        child: TextUtils(
          text: " forgot your password?",
          color: primColor,
        ),
        onTap: () {
          Get.toNamed(AppRoutes.forgetPasswordScreen);
        },
      )),
    SizedBox(
      height: 3.h,
    ),
    InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.circular(10)),
          margin: const EdgeInsetsDirectional.only(
            bottom: 5, start: 15, end: 15,),
          width: double.infinity,
          height: 50,
          child: const Center(
              child: TextUtils(
                text: "Sign In",
                fontSize: 20,
                color: Colors.white,
              ))),
    ),

    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextUtils(
          text: "Don’t have an accounnt ?",
          color: primColor,
        ),
        InkWell(

            onTap: () {

              Get.toNamed(AppRoutes.signUpScreen);
            },
            child: const TextUtils(
              text: " Sign Up",
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ))
      ],
    ),],);
}