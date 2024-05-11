import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gym/utils/my_string.dart';
import 'package:gym/view_model/cubit/auth_cubit/auth_cubit.dart';
import 'package:http/http.dart' as http;

class AIServices {
  var client = http.Client();

  postAI(
      {required String activity,
      context}) async {
    var response =
        await client.post(Uri.parse(baseUrl + '/api/ai'),
            body: jsonEncode({
              "activity": activity,
              "number_of_meals": 3
            }),
            headers: {
          "content-type": "application/json",
          'Authorization': 'Bearer ${AuthCubit.get(context).token}',
        });
    print(response.body);
    var responseJeson= jsonDecode(response.body);

    return responseJeson;
  }
}
