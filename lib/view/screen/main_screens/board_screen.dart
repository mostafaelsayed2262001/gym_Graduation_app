import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/routes/routes.dart';
import 'package:gym/utils/themes.dart';
import 'package:gym/view/widget/text_utiles.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:introduction_screen/introduction_screen.dart';

class BoardScreen extends StatelessWidget {
  const BoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
///////////////////////////.

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Get.toNamed(AppRoutes.signInScreen);
  }

  Widget _buildImage(
    String assetName,
  ) {
    return Image.asset(
      'assets/$assetName',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    PageDecoration pageDecoration = PageDecoration(
      
      bodyFlex: 1,
      imageFlex: 2,

      titleTextStyle: GoogleFonts.inter(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: false,
      autoScrollDuration: 4000,
      infiniteAutoScroll: true,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.only(top: 16, right: 16),
              child: Container(
                color: Colors.black12,
              )),
        ),
      ),
      globalFooter: Padding(
        padding: const EdgeInsetsDirectional.only(bottom: 50, start: 15,end: 15),
        child: InkWell(
          onTap:(){
            Get.toNamed(AppRoutes.signInScreen);
          } ,
          child: Container(
            decoration: BoxDecoration(color: mainColor,borderRadius: BorderRadius.circular(10)),


              width: double.infinity,
              height: 50,
              child: const Center(child: TextUtils(text: "Next",fontSize: 20,))),
        ),
      ),
      pages: [
        PageViewModel(

          bodyWidget: const SizedBox(),
          title: "Find the right\n Workout for what\n you need",

          image: _buildImage('board/board1.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Make Suitable\n Workouts and great\n results",
          body: "",
          image: _buildImage('board/board2.png'),
          decoration: pageDecoration,

        ),
        PageViewModel(
          title: "Let’s do a Workout\n and live healthy\n with us",
          body: "",
          image: _buildImage('board/board3.png'),
          decoration: pageDecoration,
        ),
      ],


      showSkipButton: false,
      showNextButton: false,
      showDoneButton: false,

      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,
      //rtl: true, // Display as right-to-left


      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(0),

      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: HexColor("#E0E0E0"),
        activeSize: const Size(15.0, 15.0),
        activeColor: mainColor,
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
