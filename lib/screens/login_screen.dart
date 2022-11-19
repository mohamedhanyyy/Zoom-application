import 'package:flutter/material.dart';
import 'package:zoom_meeting/resources/auth_methods.dart';
import 'package:zoom_meeting/utils/constants.dart';
import 'package:zoom_meeting/widgets/custom_button.dart';
import 'package:zoom_meeting/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Start or join a meeting',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(AppConstants.onBoardingImage),
            const SizedBox(height: 20),
            CustomTextField(
              text: 'Email',
              label: 'Enter email',
              value: email,
              prefixIcon: const Icon(Icons.email),
            ),
            const SizedBox(height: 20),
            CustomTextField(
              text: 'Password',
              label: 'Enter password',
              value: password,
              prefixIcon: const Icon(Icons.remove_red_eye),
            ),
            const SizedBox(height: 20),
            CustomButton(
                text: 'Login',
                function: () {
                  print(email);
                  print(password);
                  AuthMethods.signInWithEmailAndPassword(
                      context, email!, password!);
                }),
          ],
        ),
      ),
    );
  }
}
