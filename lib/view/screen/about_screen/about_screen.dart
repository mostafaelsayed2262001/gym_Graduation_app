import 'package:flutter/material.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/home/app_drawer.dart';
import 'package:gym/view/widget/home/appbar_layout.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: HexColor('#F8F8F8'),
      padding: const EdgeInsets.all(16.0),
      child: Scaffold(
        drawerScrimColor: Colors.black,
        drawer: appDrawer(),
        appBar: appBarGym("About Us"),
        body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  TextUtils(
                    text: "Our",
                    color: mainColor,
                    fontSize: 16.sp,
                  ),
                  TextUtils(
                    text: "history",
                    fontWeight: FontWeight.w700,
                    color: mainColor,
                    fontSize: 16.sp,
                    underline: TextDecoration.underline,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Image.asset(
                      "assets/aboutUs/mainAbout.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  const TextUtils(
                    text:
                        "We established our gym in 2016 with high quality and diverse equipment suitable for all age groups and fitness levels. We have many highly qualified trainers ready to work with us. Register now to access all the features",
                    maxLines: 5,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextUtils(
                    text: "Our success number",
                    fontWeight: FontWeight.w700,
                    color: mainColor,
                    fontSize: 16.sp,
                    underline: TextDecoration.underline,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(vertical: 2.h),
                    child: Image.asset(
                      "assets/aboutUs/successNum.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextUtils(
                    text: "Our",
                    color: mainColor,
                    fontSize: 16.sp,
                  ),
                  TextUtils(
                    text: "vision",
                    fontWeight: FontWeight.w700,
                    color: mainColor,
                    fontSize: 16.sp,
                    underline: TextDecoration.underline,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Image.asset(
                      "assets/aboutUs/ourVesion.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.h),
                    child: Center(child: Column(
                      children: [
                        Image.asset("assets/aboutUs/plantIcon.png"),
                        TextUtils(text: "Unlock your full potential",color: Colors.black,fontSize: 14.sp,),
                        TextUtils(text: "Our Mission is Your Achievement",color: primColor,fontSize: 12.sp,)
                      ],
                    ),),
                  ),
                ],
              )),
        ),
      ),
    ));
  }
}
