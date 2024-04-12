import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/utils/themes.dart';
import 'package:hexcolor/hexcolor.dart';


class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget(
      {required this.hintText,
      this.islock = false,
      this.prefix ="",

      required this.controller,
        this.validator,
      Key? key})
      : super(key: key);

  String hintText = '';
  String prefix = "";

  bool islock = false;
  TextEditingController controller = TextEditingController();
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    double mqh = MediaQuery.of(context).size.height;
    return Container(
      // height: mqh * 0.06,

      child: TextFormField(
        controller: controller,

        validator: validator,
        style: GoogleFonts.inter(color: Colors.black),
        textInputAction: TextInputAction.done,
        obscureText: islock,
        cursorColor: mainColor,
        
        decoration: InputDecoration(
prefixIcon: prefix.length ==1?Image.asset("assets/auth/flag.png"):null,
          focusColor: Colors.black,
          hintText: hintText,
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide:  BorderSide(color:mainColor)),
          hintStyle:  TextStyle(color: HexColor("#6C6B6B")),
          focusedBorder: OutlineInputBorder(

              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: mainColor,width: 2)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: mainColor,width: 2)),
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.black,width: 2)),
        ),
      ),
    );
  }
}
