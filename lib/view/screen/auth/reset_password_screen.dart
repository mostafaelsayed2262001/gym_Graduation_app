import 'package:flutter/material.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/auth/reset_password/inputfield_rest_widget.dart';
import 'package:gym/view/widget/auth/reset_password/resr_button_widget.dart';
import 'package:gym/view/widget/auth/reset_password/welcome_static%20_rest_widget.dart';
import 'package:gym/view/widget/auth/sign_in/buttons_widget.dart';
import 'package:gym/view/widget/auth/sign_in/inputfields_widget.dart';
import 'package:gym/view/widget/auth/sign_in/welcome_static.dart';
import 'package:gym/view/widget/auth/verify/verify_pin.dart';
import 'package:gym/view/widget/text_field.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:gym/view/widget/text_utiles.dart';

class RestPasswordScreen extends StatelessWidget {
  const RestPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeStaticRestPassword(context),
              RoundedWithShadow(),
              inputFieldsrestForgetWidget(context),
              buttonRestWidget(context),

            ],
          ),
        ),
      ),
    );
  }
}
