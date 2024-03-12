import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/view/screen/auth/sign_up_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../../utils/themes.dart';
import '../../text_utiles.dart';

Widget buttonVerifyWidget() {
  return Column(
    children: [

      SizedBox(
        height: 6.h,
      ),
      InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.signInScreen);
        },
        child: Container(
            decoration: BoxDecoration(
                color: mainColor, borderRadius : BorderRadius.circular(10)),
            margin: const EdgeInsetsDirectional.only(
              bottom: 5,
              start: 15,
              end: 15,
            ),
            width: double.infinity,
            height: 50,
            child: const Center(
                child: TextUtils(
                  text: "Confirm",
                  fontSize: 20,
                  color: Colors.white,
                ))),
      ),
      SizedBox(height: 1.h,),
      InkWell(
          onTap: () {

          },
          child:  TextUtils(
            text: " Resend Code",
            underline: TextDecoration.underline,
            color: mainColor,
          )),
      SizedBox(height: 3.h,),

    ],
  );
}
