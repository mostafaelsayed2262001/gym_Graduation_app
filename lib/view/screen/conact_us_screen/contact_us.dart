import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/screen/home_screen/home_screen.dart';
import 'package:gym/view/widget/text_field.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#F8F8F8'),
        title: TextUtils(
          text: "Contact Us",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical:  8.0),
            child: TextUtils(text: "Need Support",color: mainColor,fontSize: 18.sp,fontWeight: FontWeight.w700),
          ),
          TextUtils(text: "Contact us if you need further assistance",color: Colors.black,),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextUtils(
              text: "name",
              color: Colors.black,
              fontSize: 15.sp,
            ),
          ),
          TextFormFieldWidget(
              hintText: "your name",
              controller: TextEditingController()),

          SizedBox(
            height: 15,
          ),Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextUtils(
              text: "Email",
              color: Colors.black,
              fontSize: 15.sp,
            ),
          ),
          TextFormFieldWidget(
              hintText: "enter your email",
              controller: TextEditingController()),
          SizedBox(
            height: 15,
          ),Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: TextUtils(
              text: "Please enter the details of your request",
              color: Colors.black,
              fontSize: 15.sp,
            ),
          ),

          Container(
            // height: mqh * 0.06,

            child: TextFormField(
              controller: TextEditingController(),


              style: GoogleFonts.inter(color: Colors.black),
              textInputAction: TextInputAction.done,

              cursorColor: mainColor,
maxLines: 6,
              decoration: InputDecoration(

                focusColor: Colors.black,
                hintText: "type......",
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:  BorderSide(color:mainColor)),
                hintStyle:  TextStyle(color: HexColor("#6C6B6B")),
                focusedBorder: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: mainColor,width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: mainColor,width: 2)),
                contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.black,width: 2)),
              ),
            ),
          ),SizedBox(height: 5.h),
          Container(width: double.infinity,


            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            height: 6.h,
            child: TextButton(
              onPressed: () {
                Get.to(()=>HomeScreen());
              },
              style: TextButton.styleFrom(

                backgroundColor: mainColor,),
              child: TextUtils(
                text: "submit",fontSize: 15.sp,
              ),),
          )

        ],
      )),
    );
  }
}
