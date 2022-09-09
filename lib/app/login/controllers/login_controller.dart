import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_vibbra/app/login/repositories/login_repository.dart';

class LoginController {
  static final emailController = TextEditingController();
  static final passwordController = TextEditingController();

  static void validate() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if(email.isEmpty || password.isEmpty) {
      Get.rawSnackbar(message: 'Todos os campos são obrigatórios!');
      return;
    }

    if(!email.isEmail) {
      Get.rawSnackbar(message: 'Digite um email válido!');
      return;
    }

    LoginRepository.login(email: email, password: password);
  }
}