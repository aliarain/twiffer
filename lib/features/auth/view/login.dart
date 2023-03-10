import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twiffer/common/button_small.dart';
import 'package:twiffer/constants/ui_const.dart';
import 'package:twiffer/features/auth/view/signup.dart';
import 'package:twiffer/features/auth/widgets/auth_fields.dart';
import 'package:twiffer/theme/pallete.dart';

class LoginView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const LoginView());
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConst.appbar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              AuthField(
                controller: emailController,
                hinText: 'Email',
              ),
              const SizedBox(
                height: 25,
              ),
              AuthField(
                controller: passwordController,
                hinText: 'Password',
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.topRight,
                child: RoundedSmallButton(onTap: () {}, label: 'Done'),
              ),
              const SizedBox(height: 40),
              RichText(
                text: TextSpan(
                  text: 'Dont have an account?',
                  style: TextStyle(fontSize: 16),
                  children: [
                    TextSpan(
                        text: ' Sign Up',
                        style:
                            TextStyle(color: Pallete.blueColor, fontSize: 16),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, SignUpView.route());
                          })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
