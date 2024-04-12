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
              'https://gym-management-system-4dg0.onrender.com/api/users/auth/login'),
          body: jsonEncode(
            {"email": user, "password": password},
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);
      print(responseJson['data']['token']);

      return responseJson['data']['token'];
    } catch (e) {
      return 'false';
    }
  }

  Future<String> postRegist(
      {required String user, required String password}) async {
    try {
      var response = await client.post(
          Uri.parse(
              'https://gym-management-system-4dg0.onrender.com/api/users/auth/login'),
          body: jsonEncode(
            {
              "fullName": "mostafa elsayed",
              "email": "devmostafasoliman@gmail.com",
              "age": 23,
              "password": "123456",
              "gender": "male",
              "weight": 80,
              "height": 182,
              "phone": "01000000000"
            },
          ),
          headers: {"content-type": "application/json; charset=utf-8"});

      var responseJson = jsonDecode(response.body);
      print(responseJson['status']);

      return responseJson['data'];
    } catch (e) {
      return 'false';
    }
  }

  postLogout(token) async {
    var response = await http.delete(
        Uri.parse(
            'https://gym-management-system-4dg0.onrender.com/api/users/auth/logout'),
        headers: {
          "content-type": "application/json",
          'Authorization': 'Bearer $token',
        });
    // var responseJson = jsonDecode(response.body);
    print(response.statusCode);
    return response.statusCode;
  }

  //forget will send email - done
  postForget({required String email}) async {
    print(email);
    var response = await http.post(
      Uri.parse(
        baseUrl + '/api/users/auth/password-reset',
      ),
      headers: {
        "content-type": "application/json",
      },
      body: jsonEncode(
        {"email": "$email"},
      ),
    );
    var responseJson = jsonDecode(response.body);
    print(response.statusCode);
    return responseJson;
  }

//reset password will send code and check if true or false
  postReset({required String code, required String password}) async {
    var response = await client.post(
        Uri.parse(baseUrl + '/api/users/auth/password-reset'),
        body: jsonEncode({"code": code, "password": password}),
        headers: {"content-type": "application/json; charset=utf-8"});
    var responseJson = jsonDecode(response.body);

    return responseJson;
  }

  postVerify({required String code, required String email}) async {
    var response = await client.post(
        Uri.parse(baseUrl + '/api/users/auth/email-verification'),
        body: jsonEncode({"code": code, "email": email}),
        headers: {"content-type": "application/json; charset=utf-8"});
    var responseJson = jsonDecode(response.body);

    return responseJson;
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
