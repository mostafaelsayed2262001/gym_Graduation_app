import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/utils/themes.dart';

import 'package:gym/view/screen/member_ship_screen/member_ship.dart';
import 'package:gym/view/widget/home/app_drawer.dart';
import 'package:gym/view/widget/home/appbar_layout.dart';
import 'package:gym/view/widget/home/give_up_layout.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: HexColor('#F8F8F8'),
          padding: const EdgeInsets.all(16.0),
          child: Scaffold(
            drawerScrimColor: Colors.black,
            drawer: appDrawer(),
            appBar: appBarGym("Home"),
            body: SingleChildScrollView(
              child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          padding:
                              EdgeInsetsDirectional.symmetric(vertical: 4.h),
                          child: const TextUtils(
                            text: "Your Fitness Journey \n Starts here",
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          )),
                      Image.asset("assets/home/cardHome.png"),
                      Container(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 3.h),
                        child: const TextUtils(
                          text:
                              "From beginners to gym buffs, our app caters to all fitness levels, helping you crush your goals and surpass your limits.",
                          color: Colors.black,
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        height: 12.h,
                        child: Row(children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/home/homeView1.png"),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/home/homeView2.png"),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/home/homeView3.png"),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      const TextUtils(
                        text: "Our app give you",
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 13.h,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              iconGiveUpHome(
                                  "Fitness", "assets/home/mdiGym.png"),
                              iconGiveUpHome("Motivation",
                                  "assets/home/motivitionIcon.png"),
                              iconGiveUpHome(
                                  "Training", "assets/home/trainingIcon.png"),
                              iconGiveUpHome(
                                  "Strength", "assets/home/strengrthIcon.png"),
                            ]),
                      ),
                      Container(
                        height: 13.h,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              iconGiveUpHome(
                                  "Fitness", "assets/home/vectorIcon.png"),
                              iconGiveUpHome(
                                  "Motivation", "assets/home/goalsIcon.png"),
                              iconGiveUpHome(
                                  "Strength", "assets/home/arctIcon.png"),
                              iconGiveUpHome(
                                  "Training", "assets/home/grommetIcon.png"),
                            ]),
                      ),
                      Center(
                          child: Container(width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            height: 6.h,
                            child: TextButton(
                                onPressed: () {
                                  Get.to(MemberShipScreen());
                                },
                                style: TextButton.styleFrom(

                                    backgroundColor: mainColor,),
                                child: TextUtils(
                                  text: "Get Subscribe",fontSize: 18.sp,
                                ),),
                          ),)
                    ],
                  )),
            ),
          )),
    );
  }
}
