
import 'package:flutter/material.dart';
import '../controllers/login_controller.dart';
import '/theme.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('lib/assets/img/logo.png', color: AppTheme.materialColor, height: 60),
              ],
            ),
            const SizedBox(height: 30),
            _inputEmail(),
            _inputPassword(),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () => LoginController.validate(),
                child: const Text('Entrar'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: TextButton(
                onPressed: () {

                },
                child: const Text('Cria conta'),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _inputEmail() => Container(
    margin: const EdgeInsets.only(bottom: 16),
    child: TextField(
      controller: LoginController.emailController,
      decoration: const InputDecoration(
        hintText: 'Email'
      ),
      keyboardType: TextInputType.emailAddress,
    ),
  );

  Widget _inputPassword() => Container(
    margin: const EdgeInsets.only(bottom: 16),
    child: TextField(
      controller: LoginController.passwordController,
      decoration: const InputDecoration(
        hintText: 'Senha'
      ),
      keyboardType: TextInputType.emailAddress,
    ),
  );
}