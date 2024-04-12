import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/auth/sign_up/buttons_sign_up.dart';
import 'package:gym/view/widget/auth/sign_up/inputfields_sign_up_widget.dart';
import 'package:gym/view/widget/auth/sign_up/welcome_static_sign_up.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:  SingleChildScrollView(
      child: Form(
        key: AuthCubit.get(context).keySignUpAuth,
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeStaticSignUp(),
              InputFieldsSignUpWidget(),
              buttonsUpgnInWidget(),

            ],
          ),
        ),
      ),
    ),);
  }
}
