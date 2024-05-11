import 'package:flutter/material.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../text_field.dart';
import '../../text_utiles.dart';

Widget inputFieldsSignInWidget(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextUtils(
          text: "EMAIL",
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          color: Colors.black,
        ),
      ),
      TextFormFieldWidget(
          hintText: "enter your email",
          controller: AuthCubit.get(context).ctrlEmail,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter your email';
            }
            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
              return 'Enter a valid email address';
            }
            return null;
          }),
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
        islock: true,
        hintText: "enter your password",
        controller: AuthCubit.get(context).ctrlPassword,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your password';
          }
          return null;
        },
      ),
    ],
  );
}
