import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gym/observer.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

void main() async {
  runApp(MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: ((context) =>AuthCubit()),
      child: Sizer(
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
      ),
    );
  }
}
