import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/profile/account_info_layout.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {var data =AuthCubit.get(context).userData['data'];
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: const TextUtils(text: "Profile"),
        leading: IconButton(
            onPressed: () {
              Get.toNamed(AppRoutes.homeScreen);
            },
            icon: Icon(
              Icons.arrow_back_ios,
            )),
      ),
      body: SingleChildScrollView(
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {

            },
            builder: (context,state) {
              return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Container(
                height: 30.h,
                padding: EdgeInsetsDirectional.only(top: 5.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20),
                  ),
                  color: mainColor,
                ),
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/profile/profilePic.png",
                        height: 14.h,
                      ),
                      TextUtils(
                        text: data['fullName'],
                        fontSize: 18.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.symmetric(vertical: 2.h),
                      child: TextUtils(
                        text: "Account Information",
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: barColor, borderRadius: BorderRadius.circular(10)),
                      child: Column(children: [
                        accountInfo("Age", "${data['age']}"),
                        Divider(),
                        accountInfo("Height", "${data['height']}"),
                        Divider(),
                        accountInfo("Weight", "${data['weight']} kg"),
                        Divider(),
                        accountInfo("Email", data['email']),
                        Divider(),
                        accountInfo("gender", "${data['gender']}"),
                      ]),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: barColor, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 3.w, vertical: .5.h),
                      child: Row(
                        children: [
                          TextUtils(
                            text: "Log Out",
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                            AuthCubit.get(context).logOut(context);
                              },
                              icon: Icon(
                                Icons.logout,
                                color: HexColor("#EE0707"),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
        ],
      );
            }
          )),
    ));
  }
}
