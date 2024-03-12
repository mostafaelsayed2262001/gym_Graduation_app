import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gym/routes/routes.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          initialRoute: AppRoutes.boardScreen,
          getPages: AppRoutes.routes,
          theme: ThemeData(
            scaffoldBackgroundColor: HexColor('#F8F8F8'),
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
