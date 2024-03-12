import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../text_field.dart';
import '../../text_utiles.dart';

Widget inputFieldsSignInWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
            text: "EMAIL", fontWeight: FontWeight.w500, fontSize: 14.sp,color: Colors.black,),
      ),
      TextFormFieldWidget(
          hintText: "enter your email", controller: TextEditingController()),
      SizedBox(
        height: 3.h,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
            text: "Password", fontWeight: FontWeight.w500, fontSize: 14.sp,color: Colors.black,),
      ),
      TextFormFieldWidget(
          hintText: "enter your password", controller: TextEditingController()),
    ],

  );
}
