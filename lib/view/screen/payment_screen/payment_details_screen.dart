import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:gym/utils/themes.dart';
import 'package:gym/view/screen/payment_screen/payment_screen.dart';
import 'package:gym/view/widget/payment/payment_details_row.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#F8F8F8'),
        title: TextUtils(
          text: "payment Details",
          color: mainColor,
          fontSize: 17.sp,
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.close,
              color: Colors.red,
            ),
            color: mainColor),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
        child: Column(children: [
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 2.h),
            margin: EdgeInsetsDirectional.symmetric(vertical: 4.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 9,
                    offset: Offset(0, 3),
                    color: Colors.grey.withOpacity(0.4),
                  )
                ]),
            width: double.infinity,
            child: Column(children: [
              CircleAvatar(
                backgroundColor: mainColor,
                child: Icon(Icons.done, size: 50),
                maxRadius: 8.h,
              ),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 20, vertical: 1.h),
                child: TextUtils(
                  text: "Payment Total",
                  color: primColor,
                ),
              ),
              Container(
                child: TextUtils(
                  text: "2000 EGP",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              rowPaymentDetails(title: "Date", details: "12 APR 2024"),
              SizedBox(
                height: 10,
              ),
              rowPaymentDetails(title: "Details", details: "Residential"),
              SizedBox(
                height: 10,
              ),
              rowPaymentDetails(title: "Reference num", details: "A06453826151"),
              SizedBox(
                height: 10,
              ),
              rowPaymentDetails(title: "Account", details: "user"),
              SizedBox(
                height: 30,
              ),
              rowPaymentDetails(title: "Total Payment", details: "2000 EGP"),

            ]),
          ),
          Container(width: double.infinity,

            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            height: 6.h,
            child: TextButton(
              onPressed: () {
                Get.to(()=>PaymentScreen());
              },
              style: TextButton.styleFrom(

                backgroundColor: mainColor,),
              child: TextUtils(
                text: "Checkout",fontSize: 15.sp,
              ),),
          )
        ]),
      ),
    );
  }
}
