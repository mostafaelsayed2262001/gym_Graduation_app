import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/view/widget/auth/forget_password/buttons_forget_widget.dart';
import 'package:gym/view/widget/auth/forget_password/inputfields_forget_widget.dart';
import 'package:gym/view/widget/auth/forget_password/welcome_static__forget_widget.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
            key: AuthCubit.get(context).keyForgetAuth,
            child: Container(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeStaticForgetPassword(),
              inputFieldsForgetWidget(context),
              buttonsForgetWidget(context),
            ],
        ),
      ),
          )),
    );
  }
}
