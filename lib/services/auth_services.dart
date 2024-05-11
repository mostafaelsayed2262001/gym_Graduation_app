import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:gym/utils/my_string.dart';
import 'package:http/http.dart' as http;

class AuthenticationServices {
  var client = http.Client();

  //Finished
  Future<String> postLogin(
      {required String user, required String password}) async {
    try {
      var response = await client.post(
          Uri.parse(
              '$baseUrl/api/users/auth/login'),
          body: jsonEncode(
            {"email": user, "password": password},
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);
      print(responseJson['data']['token']);

      return responseJson['data']['token'];
    } catch (e) {
      print(e);
      return 'false';
    }
  }

  Future<String> postverify(
      {required String user, required String code}) async {
    try {
      var response = await client.post(
          Uri.parse(
              '$baseUrl/api/users/auth/email-verification'),
          body: jsonEncode(
            {"email": user, "code": code},
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);
      print(response.statusCode);

      return responseJson['statusCode'].toString();
    } catch (e) {
      print(e);
      return 'false';
    }
  }

  Future<int> postForget({
    required String user,
  }) async {
    try {
      var response = await client.post(
          Uri.parse(
              '$baseUrl/api/users/auth/forgot-password'),
          body: jsonEncode(
            {
              "email": user,
            },
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);
      print(response.statusCode);
      return response.statusCode;
    } catch (e) {
      print(e);
      return 0;
    }
  }

//finished
  Future postRegist({
    required String name,
    required String email,
    required int age,
    required int weight,
    required int height,
    required String phone,
    required String password,
    required String gender,
  }) async {
    try {
      var response = await client.post(
          Uri.parse(
              '$baseUrl/api/users/auth/register'),
          body: jsonEncode(
            {
              "fullName": name,
              "email": email,
              "age": age,
              "password": password,
              "gender": gender,
              "weight": weight,
              "height": height,
              "phone": phone
            },
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);

      return responseJson['status'];
    } catch (e) {
      return 'false ';
    }
  }

  postLogout(token) async {
    var response = await http.delete(
        Uri.parse(
            '$baseUrl/api/users/auth/logout'),
        headers: {
          "content-type": "application/json",
          'Authorization': 'Bearer $token',
        });
    // var responseJson = jsonDecode(response.body);
    print(response.statusCode);
    return response.statusCode;
  }

//reset password will send code and check if true or false
  postReset({required String code, required String password,required String email}) async {
    var response = await client.post(
        Uri.parse(baseUrl + '/api/users/auth/reset-password'),
        body: jsonEncode({"email": email,"code": code, "newPassword": password,}),
        headers: {"content-type": "application/json; charset=utf-8"});
    print(response.body);

    return response.statusCode;
  }

//done
  showData(token) async {
    var response = await client
        .get(Uri.parse(baseUrl + '/api/users/auth/user-data'), headers: {
      "content-type": "application/json",
      'Authorization': 'Bearer $token',
    });
    var responseJson = jsonDecode(response.body);

    return response.statusCode == 200 ? responseJson : response.statusCode;
  }
}
