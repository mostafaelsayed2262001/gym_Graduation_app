import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym/view/widget/auth/verify/buttons_verify_widget.dart';
import 'package:gym/view/widget/auth/verify/verify_pin.dart';
import 'package:gym/view/widget/auth/verify/welcome_static_verify_widget.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeStaticVerifyWidget(context),
              RoundedWithShadow(),
              buttonVerifyWidget(context)

            ],
          )),
    ));
  }
}
