import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../text_field.dart';
import '../../text_utiles.dart';

enum SingingCharacter { male, female }


Widget inputFieldsSignUpWidget() {
  SingingCharacter? _character = SingingCharacter.male;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
          text: "Full Name",
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
      TextFormFieldWidget(
          hintText: "enter your name", controller: TextEditingController()),
      SizedBox(
        height: 3.h,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
          text: "Age",
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
      TextFormFieldWidget(
          hintText: "enter your Age", controller: TextEditingController()),
      Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: <Widget>[
            TextUtils(
              text: "Gender",
              fontSize: 14.sp,
              color: Colors.black,
            ),

          ],
        )
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
          text: "Number Phone",
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
      Container(
        child: TextFormFieldWidget(prefix: "0",
            hintText: "enter your number", controller: TextEditingController()),
      ),
      SizedBox(
        height: 3.h,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
          text: "Email",
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
      TextFormFieldWidget(
          hintText: "enter your email", controller: TextEditingController()),
      SizedBox(
        height: 3.h,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
          text: "Password",
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
      TextFormFieldWidget(
          hintText: "enter your password", controller: TextEditingController()),
    ],
  );
}
