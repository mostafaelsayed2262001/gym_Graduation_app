import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/auth/sign_in/buttons_widget.dart';
import 'package:gym/view/widget/auth/sign_in/inputfields_widget.dart';
import 'package:gym/view/widget/auth/sign_in/welcome_static.dart';
import 'package:gym/view/widget/text_field.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import 'package:gym/view/widget/text_utiles.dart';

import '../../../view_model/cubit/auth_cubit/auth_cubit.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:BlocConsumer<AuthCubit, AuthState>(
          listener: (BuildContext context,  state) {  },
          builder: (context,state) {
            return Container(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  welcomeStaticSignIn(),
                  inputFieldsSignInWidget(context),
                  buttonsSignInWidget(context),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
