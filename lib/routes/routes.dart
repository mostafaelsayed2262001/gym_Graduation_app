



import 'package:get/get.dart';
import 'package:gym/view/screen/auth/forget_screen.dart';
import 'package:gym/view/screen/auth/reset_password_screen.dart';
import 'package:gym/view/screen/auth/sign_in_screen.dart';
import 'package:gym/view/screen/auth/sign_up_screen.dart';
import 'package:gym/view/screen/auth/verify_screen.dart';
import 'package:gym/view/screen/main_screens/board_screen.dart';

class AppRoutes {
  //intinalRoute
  static const boardScreen = Routes.boardScreen;
  static const homeScreen = Routes.homeScreen;
  static const signInScreen = Routes.signInScreen;
  static const signUpScreen = Routes.signUpScreen;
  static const verifyScreen = Routes.verifyScreen;
  static const forgetPasswordScreen = Routes.forgetPasswordScreen;
  static const restPasswordScreen = Routes.restPasswordScreen;


  //getPage

  static final routes = [

    GetPage(
      name:   boardScreen,
      page: () =>  OnBoardingPage(),

    ),
    GetPage(
      name: signInScreen,
      page: () =>  SignInScreen(),
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
    ),GetPage(
      name: verifyScreen,
      page: () => VerifyScreen(),
    ),GetPage(
      name: forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
    ),GetPage(
      name: restPasswordScreen,
      page: () => RestPasswordScreen(),
    ),
  ];
}

class Routes {

  static const boardScreen = '/mainScreen';
  static const homeScreen = '/homeScreen';
  static const signInScreen = '/signInScreen';
  static const signUpScreen = '/signUpScreen';
  static const verifyScreen = '/verifyScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
  static const restPasswordScreen = '/restPasswordScreen';

}
