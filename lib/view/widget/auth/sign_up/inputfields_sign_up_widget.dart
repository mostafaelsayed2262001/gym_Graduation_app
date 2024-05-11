import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:sizer/sizer.dart';

import '../../text_field.dart';
import '../../text_utiles.dart';

//
Widget inputFieldsSignUpWidget(context) {
  return Form(
    key: AuthCubit
        .get(context)
        .keySignUpAuth,
    child: Column(
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
            hintText: "enter your name",
            controller: AuthCubit
                .get(context)
                .ctrlName,
            validator: (val) {
              if (val!.length < 6) return "enter full name";

            }),
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
            hintText: "enter your Age",
            controller: AuthCubit
                .get(context)
                .ctrlAge,
            validator: (val) {
              if (int.parse(val!) != int) {
                "enter num";
              }
            }),
        Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: BlocConsumer<AuthCubit, AuthState>(
                listener: (BuildContext context, state) {},
                builder: (context, state) {
                  int genderSelection = 0;
                  return Row(
                    children: <Widget>[
                      TextUtils(
                        text: "Gender",
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                      Radio(
                        activeColor: mainColor,
                        value: 0,
                        groupValue: AuthCubit
                            .get(context)
                            .genderSelection,
                        onChanged: (n) {
                          AuthCubit.get(context).onSwape(n);
                          print(n);
                        },
                      ),
                      Text(
                        'male',
                        style: new TextStyle(fontSize: 16.0),
                      ),
                      Radio(
                        activeColor: mainColor,
                        value: 1,
                        groupValue: AuthCubit
                            .get(context)
                            .genderSelection,
                        onChanged: (n) {
                          AuthCubit.get(context).onSwape(n);

                          print(n);
                        },
                      ),
                      Text(
                        'female',
                        style: new TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  );
                })),
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
          child: TextFormFieldWidget(
              prefix: "0",
              hintText: "enter your number",
              validator: (val) {
                if (int.parse(val!) == int) {
                  if (val.length != 11) {
                    return "enter 11 num";
                  }
                }
              },
              controller: AuthCubit
                  .get(context)
                  .ctrlNum),
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
            hintText: "enter your email",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Enter a valid email address';
              }
              return null;
            },
            controller: AuthCubit
                .get(context)
                .ctrlEmail),
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
            hintText: "enter your password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            islock: true,
            controller: AuthCubit
                .get(context)
                .ctrlPassword),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextUtils(
            text: "Height",
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: Colors.black,
          ),
        ),
        Container(
          child: TextFormFieldWidget(
              hintText: "enter your height",
              validator: (val) {
                if (int.parse(val!) != int) {
                  "enter num between 0 to 250 cm";
                }
              },
              controller: AuthCubit
                  .get(context)
                  .ctrlHeight),
        ),
        SizedBox(
          height: 3.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: TextUtils(
            text: "Weight",
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: Colors.black,
          ),
        ),
        Container(
          child: TextFormFieldWidget(
              hintText: "enter your weight",
              validator: (val) {
                if (int.parse(val!) != int) {
                  "enter num";
                }
              },
              controller: AuthCubit
                  .get(context)
                  .ctrlWeight),
        ),
        SizedBox(
          height: 3.h,
        ),
      ],
    ),
  );
}
