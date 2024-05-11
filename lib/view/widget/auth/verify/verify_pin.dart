import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:pinput/pinput.dart';

class RoundedWithShadow extends StatefulWidget {
  const RoundedWithShadow({Key? key}) : super(key: key);

  @override
  _RoundedWithShadowState createState() => _RoundedWithShadowState();

  @override
  String toStringShort() => 'Rounded With Shadow';
}

class _RoundedWithShadowState extends State<RoundedWithShadow> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60,
      height: 64,
      textStyle: GoogleFonts.poppins(
        fontSize: 20,
        color: const Color.fromRGBO(70, 69, 66, 1),
      ),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(spreadRadius: 5,
            color: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
            offset: Offset(0, 3),
            blurRadius: 16,
          ),
        ],
        color:  Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );

    final cursor = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 21,
        height: 1,
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color:  Colors.black
          ,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );

    return Center(
      child: Pinput(
        length: 4,
        controller: AuthCubit.get(context).ctrlpin,
        focusNode: focusNode,
        defaultPinTheme: defaultPinTheme,
        separatorBuilder: (index) => const SizedBox(width: 16),
        focusedPinTheme: defaultPinTheme.copyWith(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(spreadRadius: 5,
                color: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
                offset: Offset(0, 3),
                blurRadius: 16,
              ),
            ],
          ),
        ),
        // onClipboardFound: (value) {
        //   debugPrint('onClipboardFound: $value');
        //   controller.setText(value);
        // },
        showCursor: true,
        cursor: cursor,
      ),
    );
  }
}