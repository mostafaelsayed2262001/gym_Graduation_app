import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/services/auth_services.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:meta/meta.dart';


part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  AuthenticationServices _authenticationServices = AuthenticationServices();
  TextEditingController ctrlEmail = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlAge = TextEditingController();
  TextEditingController ctrlHeight = TextEditingController();
  TextEditingController ctrlWeight = TextEditingController();
  //Gender
  late String token;
  var userData;
  final keyAuth = GlobalKey<FormState>();
  final keyForgetAuth = GlobalKey<FormState>();
  final keySignUpAuth = GlobalKey<FormState>();
  static AuthCubit get(context) => BlocProvider.of(context);
  bool visibilty = true;
  List gender = ["male","female"];

//done
  login(context) async {
    emit(AuthLoader());
    token = await _authenticationServices.postLogin(
        user: ctrlEmail.text.toString(),
        password: ctrlPassword.text.toString());
    print(token);
    if (token != 'false') {
      await showData();

      Get.offNamed(AppRoutes.homeScreen);
      emit(AuthLogin());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        duration: Duration(seconds: 2),
        content: TextUtils(
          text: 'Invalid Password Or Email',
          color: Colors.white,
        ),
        backgroundColor: (Colors.grey),
      ));
      emit(AuthError());
    }
  }

//to show data when u have token
  showData() async {
    await _authenticationServices.showData(token);
    userData = await _authenticationServices.showData(token);
    print(userData);
    emit(AuthDataShowed());
  }

//done
  logOut(context) async {
    var x = await _authenticationServices.postLogout(token);

    if (x == 204) {
      ctrlEmail = TextEditingController();
      ctrlPassword = TextEditingController();
      ctrlName = TextEditingController();
      token="";
      AuthCubit();
      Get.offNamed(AppRoutes.signInScreen);
  } else {
      print(x);
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    duration: Duration(seconds: 2),
    content: TextUtils(
    text: 'Invalid LogOut',
    color: Colors.white,
    ),
    backgroundColor: (Colors.grey),
    ));
    }
  }

//
  forgetPass(context) async {
  emit(AuthLoader());
  var done = await _authenticationServices.postForget(
  email:  ctrlEmail.text.toString(),
  );
  print(done);
  if (done == 200) {


  Get.offNamed(AppRoutes.restPasswordScreen);
  emit(AuthFroget());
  } else {
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  duration: Duration(seconds: 2),
  content: TextUtils(
  text: 'Invalid send Email',
  color: Colors.white,
  ),
  backgroundColor: (Colors.grey),
  ));
  emit(AuthError());
  }
}



  isVisiable() {
    visibilty = !visibilty;
    emit(AuthVisiable());
  }

}
