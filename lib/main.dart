
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '/app/login/views/login_view.dart';
import '/theme.dart';
import '/token_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  final tokenUsuario = TokenUsuario();
  await tokenUsuario.initTokenUsuario();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projeto Vibbra',
      theme: AppTheme.mainTheme,
      home: Scaffold(
        backgroundColor: AppTheme.materialColor,
        body: const LoginView()
      ),
    );
  }
}
