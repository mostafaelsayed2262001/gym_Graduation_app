import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/themes.dart';
import '../../widget/text_utiles.dart';

class GymnasticScreen extends StatelessWidget {
  GymnasticScreen({Key? key}) : super(key: key);
  List list = [
    [
      "25 MIN FULL BODY HIIT for Beginners",
      "https://www.youtube.com/watch?v=cbKkB3POqaY&t=10s",
      "https://cdn.muscleandstrength.com/sites/default/files/field/feature-wide-image/workout/6-week-womens-fat-loss-wide.jpg"
    ],
    [
      "20 Min Fat Burning HIIT Workout - Full body Cardio, No Equipment, No Repeat",
      "https://www.youtube.com/watch?v=-hSma-BRzoo",
      "https://olimpsport.com/media/mageplaza/blog/post/image//w/y/wyprobuj-5-najlepszych-cwiczen-cardio-na-silowni_5.jpg",
    ],
    [
      "10 Best Exercises for Massive Shoulders",
      "https://www.youtube.com/watch?v=sUNv3uHAP6I",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm_hAWtpSaLcfzNyLbdkb9fjIMain-ojk6nWFftslOZQgc4ZWJvFQZsOapi8sFZ5bDLxE&usqp=CAU",
    ],
    [
      "6 Big Chest Exercises - Day 1 Chest Workout ",
      "https://www.youtube.com/watch?v=pKPjzQ-gVZo",
      "https://i.ytimg.com/vi/pKPjzQ-gVZo/maxresdefault.jpg",
    ],
    [
      "Top Ten Leg Day Exercises - YouTube",
      "https://www.youtube.com/watch?app=desktop&v=LWdhO_OMrHk",
      "https://i.ytimg.com/vi/LWdhO_OMrHk/sddefault.jpg",
    ],
    [
      "15 MINUTE ARM WORKOUT (DUMBBELLS ONLY)",
      "https://www.youtube.com/watch?v=UY6-JzdnHUM",
      "https://i.ytimg.com/vi/UY6-JzdnHUM/maxresdefault.jpg",
    ],
    [
      "The 💯 Back Workout (MOST EFFECTIVE!)",
      "https://www.youtube.com/watch?app=desktop&v=YvKOvyiAdAI",
      "https://i.ytimg.com/vi/YvKOvyiAdAI/maxresdefault.jpg",
    ],
    [
      "6 Effective Exercises To Build A 3D Back - Gym Body Motivation",
      "https://www.youtube.com/watch?v=g42CMLdOGnc",
      "https://i.ytimg.com/vi/g42CMLdOGnc/maxresdefault.jpg",
    ],
  ];

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#F8F8F8'),
        title: TextUtils(
          text: "Gymnastics",
          color: mainColor,
          fontSize: 17.sp,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            color: mainColor),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
        //card

        child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
                  onTap: () async{
                    await _launchUrl(Uri.parse("${list[index][1]}"));
                  },
                  child: Container(
                    height: 15.h,
                    padding: EdgeInsetsDirectional.all(8),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Row(children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          height: 14.h,
                          width: 42.w,
                          child: Image.network(list[index][2])),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 48.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.0),
                              child: TextUtils(
                                  text: "${list[index][0]}",
                                  maxLines: 2,
                                  color: Colors.black),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 3.0),
                              child: TextUtils(
                                text: "8 mi",
                                fontSize: 9.sp,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 3.0),
                              child: TextUtils(
                                text: "Beginner",
                                fontSize: 9.sp,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
            separatorBuilder: (context, index) => Divider(),
            itemCount: list.length),
      ),
    );
  }
}
