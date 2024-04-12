import 'package:flutter/material.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:sizer/sizer.dart';

Widget accountInfo(String title,String info){return Container(
  padding: EdgeInsetsDirectional.symmetric(horizontal: 3.w,vertical: 1.5.h),
  child: Row(
    children: [
      TextUtils(
        text: title,
        color: Colors.black,
      ),
      Spacer(),
      TextUtils(
        text: info,
        color: Colors.grey,
      ),
    ],
  ),
);}