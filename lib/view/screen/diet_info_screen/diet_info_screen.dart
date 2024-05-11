import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:gym/view_model/cubit/ai_cubit/ai_cubit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class DietInfoScreen extends StatelessWidget {
  DietInfoScreen({Key? key}) : super(key: key);
  List tableTitles = [
    "calories",
    "fat content",
    "saturated fat content",
    "cholesterolcontent",
    "sodium content",
    "carbohydrates content",
    "sugar content",
    "protein content",
  ];
  List food = [
    "Breake Fast",
    "Lunch",
    "Dinner",
  ];

  @override
  Widget build(BuildContext context) {
    List<String> tableValues;


    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#F8F8F8'),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: mainColor,
            )),
      ),
      body: SizedBox(

        child: ListView.separated(
            itemBuilder: (context, indexxx) {
              List itemsData = AICubit.get(context).AIData[indexxx];
              return Container(

                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      padding:
                          const EdgeInsetsDirectional.symmetric(vertical: 10),
                      child: TextUtils(
                          text: food[indexxx],
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: Colors.black),
                    ),
                    Container(
                      width: double.infinity,
                      height: 40.h,
                      child: ListView.separated(
                          itemBuilder: (context, indexx) {
                            tableValues = [
                              "${itemsData[indexx]["Calories"]}",
                              "${itemsData[indexx]["FatContent"]}",
                              "${itemsData[indexx]["SaturatedFatContent"]}",
                              "${itemsData[indexx]["CholesterolContent"]}",
                              "${itemsData[indexx]["SodiumContent"]}",
                              "${itemsData[indexx]["CarbohydrateContent"]}",
                              "${itemsData[indexx]["SugarContent"]}",
                              "${itemsData[indexx]["ProteinContent"]}",
                            ];
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: mainColor,
                                  ),
                                  borderRadius: BorderRadius.circular(20)),
                              child: ExpandablePanel(
                                header: Container(
                                    padding:
                                        const EdgeInsetsDirectional.symmetric(
                                            horizontal: 20, vertical: 10),
                                    child: TextUtils(
                                      text: "${itemsData[indexx]['Name']}",
                                      color: Colors.black,
                                    )),
                                collapsed: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(color: mainColor)),
                                    child: SizedBox()),
                                expanded: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Center(
                                          child: Container(
                                        width: 40.w,
                                        height: 13.h,
                                        color: Colors.grey,
                                        child: Image.network(
                                            "${AICubit.get(context).AIData[0][indexx]["image_link"]}"),
                                      )),
                                    ),
                                    Center(
                                      child: TextUtils(
                                        text: "Nutritional Values:",
                                        color: Colors.black,
                                        fontSize: 18.sp,
// softWrap: true,
                                      ),
                                    ),
                                    Container(
                                        alignment: AlignmentDirectional.center,
                                        width: 90.w,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: mainColor)),
                                        height: 7.h,
                                        margin: EdgeInsetsDirectional.symmetric(
                                            horizontal: 20),
                                        child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) =>
                                                Container(
                                                  child: Column(children: [
                                                    Container(
                                                      color: barColor,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .all(5),
                                                      child: TextUtils(
                                                          text: tableTitles[
                                                              index],
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      height: 2,
                                                    ),

                                                    ///xxxxxxxx
                                                    TextUtils(
                                                        text:
                                                            tableValues[index],
                                                        color: Colors.black),
                                                  ]),
                                                ),
                                            separatorBuilder:
                                                (context, index) => SizedBox(),
                                            itemCount: tableTitles.length)),
                                    Container(
                                      padding: EdgeInsetsDirectional.symmetric(
                                          vertical: 10),
                                      alignment: AlignmentDirectional.center,
                                      child: TextUtils(
                                        text: "Ingredients:",
                                        color: Colors.black,
                                        fontSize: 18.sp,
// softWrap: true,
                                      ),
                                    ),
                                    Container(
                                      width: 90.w,
                                      height: 15.h,
                                      padding: EdgeInsetsDirectional.symmetric(
                                          horizontal: 10),
                                      child: ListView.separated(
                                          itemBuilder: (context, index) =>
                                              Container(
                                                padding:
                                                    EdgeInsetsDirectional.all(
                                                        5),
                                                child: TextUtils(
                                                    text:
                                                        " • ${itemsData[indexx]["RecipeIngredientParts"][index]}",
                                                    color: Colors.grey),
                                              ),
                                          separatorBuilder: (context, index) =>
                                              SizedBox(),
                                          itemCount: itemsData[indexx]
                                                  ["RecipeIngredientParts"]
                                              .length),
                                    ),
                                    Container(
                                      padding: EdgeInsetsDirectional.symmetric(
                                          vertical: 10),
                                      alignment: AlignmentDirectional.center,
                                      child: TextUtils(
                                        text: "Recipe instructions:",
                                        color: Colors.black,
                                        fontSize: 18.sp,
// softWrap: true,
                                      ),
                                    ),
                                    Container(
                                      width: 90.w,
                                      height: 35.h,
                                      padding: EdgeInsetsDirectional.symmetric(
                                          horizontal: 10),
                                      child: ListView.separated(
                                          itemBuilder: (context, index) =>
                                              Container(
                                                padding:
                                                    EdgeInsetsDirectional.all(
                                                        5),
                                                child: TextUtils(
                                                    text:
                                                        " • ${itemsData[indexx]["RecipeInstructions"][index]}",
                                                    color: Colors.grey,
                                                    maxLines: 6),
                                              ),
                                          separatorBuilder: (context, index) =>
                                              SizedBox(),
                                          itemCount: itemsData[indexx]
                                                  ["RecipeInstructions"]
                                              .length),
                                    ),
                                    Container(
                                      padding: EdgeInsetsDirectional.symmetric(
                                          vertical: 10),
                                      alignment: AlignmentDirectional.center,
                                      child: TextUtils(
                                        text: "Cooking & preparation time:",
                                        color: Colors.black,
                                        fontSize: 18.sp,
// softWrap: true,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextUtils(
                                              text:
                                                  " • Cook Time :  ${itemsData[indexx]["PrepTime"]}min",
                                              color: Colors.grey),
                                          TextUtils(
                                              text:
                                                  " • Preparation Time: ${itemsData[indexx]["PrepTime"]}min",
                                              color: Colors.grey),
                                          TextUtils(
                                              text:
                                                  " • Total time : ${itemsData[indexx]["TotalTime"]} min",
                                              color: Colors.grey),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 5),
                          itemCount: itemsData.length),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(),
            itemCount: food.length),
      ),
    );
  }
}
