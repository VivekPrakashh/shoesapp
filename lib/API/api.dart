import 'dart:convert';
import 'dart:developer';

import 'package:flutter/src/widgets/editable_text.dart';
import 'package:http/http.dart' as http;

class Callapi {
  Future<dynamic> fetchdata({
    String? name,
    String? email,
    String? phone,
    String? pwd,
  }) async {
    var client = http.Client();
    try {
      final result = await client.post(
          Uri.parse(
              "https://cms.cybertize.in/yonodeal-crm/public/api/user/register"),
          body: {
            "name": name,
            "phone": phone,
            "email": email,
            "password": pwd,
            "password_confirmation": pwd
          });
      print(result.statusCode);
      if (result.statusCode == 201 || result.statusCode == 400) {
        return jsonDecode(result.body) as Map;
      }
    } catch (e) {
      print(e);
    } finally {
      client.close();
    }
  }

Future<dynamic> checkLoginOtp({
  String phone = "",
  String otp = "",
}) async {
  var client = http.Client();
  try {
    final result = await client.post(
        Uri.parse(
            "https://cms.cybertize.in/yonodeal-crm/public/api/user/verify"),
        body: {
          " phone": phone,
          " otp": otp,
        });
    print(result.statusCode);
    if (result.statusCode == 201 || result.statusCode == 400) {
      return jsonDecode(result.body) as Map;
    }
  } catch (e) {
    print(e);
  } finally {
    client.close();
  }
}
}


