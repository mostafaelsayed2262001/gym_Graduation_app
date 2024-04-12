import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym/utils/themes.dart';
import 'package:gym/view/screen/profile_screen/profile_screen.dart';

import 'package:gym/view/widget/text_utiles.dart';
PreferredSizeWidget appBarGym(String title){return AppBar(
  elevation: 0,
  title: TextUtils(
    text: title,
    color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.w500,
  ),
  actions: [
    IconButton(
        onPressed: () {
          Get.to(ProfileScreen());
        },
        icon: Image.asset("assets/home/profileIcon.png"))
  ],
  centerTitle: true,
  backgroundColor: barColor,
  iconTheme: IconThemeData(color: Colors.black),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);}