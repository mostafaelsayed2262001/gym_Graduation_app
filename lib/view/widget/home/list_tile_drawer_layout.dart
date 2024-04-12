import 'package:flutter/material.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/text_utiles.dart';

Widget listTileDrawer(Widget icon,String title,Function()? func){return  ListTile(
  leading: icon,

  title:  TextUtils(text: title,fontSize: 16 ,color: Colors.black,),
  onTap: func,
);}