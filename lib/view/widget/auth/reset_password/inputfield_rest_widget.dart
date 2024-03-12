import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../text_field.dart';
import '../../text_utiles.dart';

Widget inputFieldsrestForgetWidget() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
          text: "New Password", fontWeight: FontWeight.w500, fontSize: 14.sp,color: Colors.black,),
      ),
      TextFormFieldWidget(
          hintText: "enter your new password", controller: TextEditingController()),
      SizedBox(
        height: 3.h,
      ),

    ],

  );
}
