import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:gym/services/ai_services.dart';
import 'package:gym/view/screen/diet_info_screen/diet_info_screen.dart';
import 'package:gym/view/widget/text_utiles.dart';
import 'package:gym/view_model/cubit/ai_cubit/ai_state.dart';

class AICubit extends Cubit<AIState> {
  AICubit() : super(AIInitial());

  static AICubit get(context) => BlocProvider.of(context);
  AIServices _aiServices = AIServices();
  String selectValue = "";
  final List<String> items = [
    'Little/no exercise',
    'Light exercise',
    'Moderate exercise (3-5 days/wk)',
    'Very active (6-7 days/wk)',
    'Extra active (very active & physical job)'
  ];
  List AIData = [];

  AiData(context) async {
    emit(AILoader());
    var response =
        await _aiServices.postAI(activity: selectValue, context: context);

    print(response);
    if (response["status"] == 200) {
      Get.off(() => DietInfoScreen());
      AIData = response["data"];
      emit(AIGetData());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        duration: Duration(seconds: 2),
        content: TextUtils(
          text: 'try again',
          color: Colors.white,
        ),
        backgroundColor: (Colors.grey),
      ));
      emit(AIError());
    }
  }
}
