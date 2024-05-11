import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/screen/diet_selection_screen/diet_selection_screen.dart';
import 'package:gym/view/screen/member_ship_screen/member_ship.dart';
import 'package:gym/view/widget/text_field.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#F8F8F8'),
        title: TextUtils(
            text: "payment method",
            color: mainColor,
            fontSize: 17.sp,
            fontWeight: FontWeight.w700),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
            color: mainColor),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: Column(children: [
            Center(child: Image.asset("assets/memberShip/wallet.png")),
            //Credit card
            Container(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 8),
              child: Row(children: [
                Icon(Icons.payment_outlined),
                SizedBox(
                  width: 5,
                ),
                TextUtils(
                  text: "Credit",
                  color: Colors.black,
                )
              ]),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: mainColor)),
            ),

//       credit body
            Container(
              margin: EdgeInsetsDirectional.only(top: 10),
              padding: EdgeInsetsDirectional.symmetric(horizontal: 8, vertical: 12),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: HexColor("#F6F4F4"),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: mainColor)),
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TextUtils(
                  text: "Cardholder name",
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
                TextFormFieldWidget(
                    hintText: "enter your name",
                    controller: TextEditingController()),
                SizedBox(
                  height: 15,
                ),
                TextUtils(
                  text: "card number",
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
                TextFormFieldWidget(
                    hintText: "0000 0000 0000 0000",
                    controller: TextEditingController()),
                SizedBox(
                  height: 15,
                ),
                TextUtils(
                  text: "card number",
                  color: Colors.black,
                  fontSize: 15.sp,
                ),
                TextFormFieldWidget(
                    hintText: "0000 0000 0000 0000",
                    controller: TextEditingController()),
                SizedBox(
                  height: 15,
                ),
                Row(

                  children: [
                    Expanded(
                      flex: 4,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextUtils(
                          text: "expiration date",
                          color: Colors.black,
                          fontSize: 15.sp,
                        ),
                        TextFormFieldWidget(
                            hintText: "03/2026",
                            controller: TextEditingController()),
                      ],
                    )),
                    SizedBox(width: 10,),
                    Expanded(flex: 2,child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [TextUtils(
                      text: "cvv",
                      color: Colors.black,
                      fontSize: 15.sp,
                    ),
                      TextFormFieldWidget(
                          hintText: "⚫⚫⚫",
                          controller: TextEditingController()),],))
                  ],
                ),
              ]),
            ),
            SizedBox(height: 5.h,),
            Center(
              child: Container(width: double.infinity,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                ),
                height: 6.h,
                child: TextButton(
                  onPressed: () {
                    Get.to(DietSelectionScreen());
                  },
                  style: TextButton.styleFrom(

                    backgroundColor: mainColor,),
                  child: TextUtils(
                    text: "Pay Now",fontSize: 15.sp,
                  ),),
              ),)
          ]),
        ),
      ),
    );
  }
}
