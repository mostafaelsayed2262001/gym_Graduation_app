import 'package:flutter/material.dart';
import 'package:gym/view/widget/home/app_drawer.dart';
import 'package:gym/view/widget/home/appbar_layout.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

class MemberShipScreen extends StatelessWidget {
  const MemberShipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
        color: HexColor('#F8F8F8'),
          padding: const EdgeInsets.all(16.0),
          child: Scaffold(

            drawerScrimColor: Colors.black,
            drawer: appDrawer(),
            appBar: appBarGym("Member Ship"),
            body: SingleChildScrollView(
              child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(padding: EdgeInsetsDirectional.only(top: 2.h),child: Image.asset("assets/memberShip/basicMemShip.png")),
                      Container(padding: EdgeInsetsDirectional.only(top: 2.h),child: Image.asset("assets/memberShip/platMemberShip.png")),
                      Container(padding: EdgeInsetsDirectional.only(top: 2.h),child: Image.asset("assets/memberShip/premMemberShip.png")),
                    ],
                  )),
            ),
          ),
        ));
  }
}
