import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/utils/themes.dart';

import 'package:gym/view/screen/member_ship_screen/member_ship.dart';
import 'package:gym/view/screen/profile_screen/profile_screen.dart';
import 'package:gym/view/widget/home/list_tile_drawer_layout.dart';


Widget appDrawer() {
  return Drawer(
    width: double.infinity,
    elevation: 0,
    child: ListView(
      children: [
        listTileDrawer(Icon(Icons.home_outlined, color: mainColor), "Home", () {
          Get.back();
          Get.toNamed(Routes.homeScreen);
        }),
        Divider(
          color: Colors.black,
        ),
        listTileDrawer(Image.asset("assets/menu/aboutIcon.png"), "About", () {
          Get.back();
          Get.toNamed(Routes.aboutUsScreen,);
        }),
        Divider(
          color: Colors.black,
        ),
        listTileDrawer(Icon(Icons.person_2_outlined, color: mainColor), "Profile", () {
          Get.back();
          Get.to(ProfileScreen());
        }),
        Divider(
          color: Colors.black,
        ),
        listTileDrawer(Icon(Icons.monitor , color: mainColor), "MemberShips", () {
          Get.back();
          Get.to(MemberShipScreen());
        }),
        Divider(
          color: Colors.black,
        ),
        listTileDrawer(Image.asset("assets/menu/lockIcon.png"), "Gymnastics", () {
          Get.back();
        }),
        Divider(
          color: Colors.black,
        ),
        listTileDrawer(Image.asset("assets/menu/amazonPay.png"), "Payment", () {
          Get.back();
        }),
        Divider(
          color: Colors.black,
        ),
        listTileDrawer(Icon(Icons.phone, color: mainColor), "Contact Us", () {
          Get.back();
        }),
        Divider(
          color: Colors.black,
        ),
      ],
    ),
  );
}
