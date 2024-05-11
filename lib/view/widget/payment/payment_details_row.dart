import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/text_utiles.dart';

Widget rowPaymentDetails({required String title,required String details}){
  return  Row(children: [TextUtils(text: title,color: primColor,),Spacer(),TextUtils(text: details,color: Colors.black,)],);
}