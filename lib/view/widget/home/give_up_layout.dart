import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/themes.dart';
import '../text_utiles.dart';

Widget iconGiveUpHome(String text,String iconPath){return Expanded(
    flex: 1,
    child: Column(
      children: [
        Container(
            height: 8.h,
            width: 15.w,
            decoration: BoxDecoration(
                color:barColor,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(iconPath)),
        SizedBox(height: 1.h,),
        TextUtils(text: text,color: Colors.black,),
      ],
    ));}