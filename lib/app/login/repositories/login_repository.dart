import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:projeto_vibbra/constants.dart';

class LoginRepository {
  static Future<void> login({
    required String email, 
    required String password,
  }) async {

    Get.defaultDialog(
      title: 'Validando...',
      content: const CircularProgressIndicator(),
      barrierDismissible: false
    );

    try {
      final query = await http.post(
        Uri.parse('${Constants.baseUrl}/authenticate/'),
        body: {
          'email': email, 
          'password': password, 
        }
      );
      Get.back();

      print(query.statusCode);
      print(query.body);
    } catch(e) {
      Get.back();
      print(e);
    }
  }
}