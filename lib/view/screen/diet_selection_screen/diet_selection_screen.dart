import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/screen/diet_info_screen/diet_info_screen.dart';
import 'package:gym/view/screen/home_screen/home_screen.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:gym/view_model/cubit/ai_cubit/ai_cubit.dart';
import 'package:gym/view_model/cubit/ai_cubit/ai_state.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class DietSelectionScreen extends StatefulWidget {
  const DietSelectionScreen({Key? key}) : super(key: key);

  @override
  State<DietSelectionScreen> createState() => _DietSelectionScreenState();
}

class _DietSelectionScreenState extends State<DietSelectionScreen> {
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 8),
            child: Column(
              children: [
                Image.asset("assets/diet/Diet.png"),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: mainColor,
                      )),
                  width: double.infinity,
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextUtils(
                            text:
                            "Modify the values and click the generate \n button to use",
                            color: Colors.black,
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsetsDirectional.symmetric(
                                        vertical: 10),
                                    child: TextUtils(
                                      text: "Choose your Activity :",
                                      color: mainColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                   BlocConsumer<AICubit, AIState>(
                                      listener: (context, AIState) {},
                                      builder: (context, AIState) {
                                        return DropDownSpecial();
                                      }
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25)),
                            height: 6.h,
                            child: TextButton(
                              onPressed: ()async {
                                await AICubit.get(context).AiData(context);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: mainColor,
                              ),
                              child: TextUtils(
                                text: "Generate",
                                fontSize: 15.sp,
                              ),
                            ),
                          )
                        ]),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class DropDownSpecial extends StatefulWidget {
  const DropDownSpecial({Key? key}) : super(key: key);

  @override
  State<DropDownSpecial> createState() => _DropDownSpecialState();
}

class _DropDownSpecialState extends State<DropDownSpecial> {
  @override
  Widget build(BuildContext context) {
    String? selectedValue;
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        isExpanded: true,
        hint: Row(
          children: [
            SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                "${AICubit.get(context).selectValue}",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Spacer(),
            Icon(
              Icons.arrow_drop_down_circle_outlined,
              color: barColor,
            )
          ],
        ),
        items: AICubit
            .get(context)
            .items
            .map((String item) =>
            DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          setState(() {
            AICubit.get(context).selectValue = value!;
          });
        },
        buttonStyleData: ButtonStyleData(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(left: 14, right: 14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: HexColor('#F8F8F8'),
          ),
          elevation: 2,
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
          ),
          iconSize: 14,
          iconEnabledColor: Colors.yellow,
          iconDisabledColor: Colors.grey,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
          ),
          offset: const Offset(-20, 0),
          scrollbarTheme: ScrollbarThemeData(
            radius: const Radius.circular(40),
            thickness: MaterialStateProperty.all<double>(6),
            thumbVisibility: MaterialStateProperty.all<bool>(true),
          ),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 40,
          padding: EdgeInsets.only(left: 14, right: 14),
        ),
      ),
    );
  }
}
