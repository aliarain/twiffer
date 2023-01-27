import 'package:flutter/material.dart';
import 'package:twiffer/constants/ui_const.dart';
import 'package:twiffer/features/auth/widgets/auth_fields.dart';

class LoginView extends StatefulWidget {
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
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              AuthField(controller: emailController),
              AuthField(controller: passwordController)
            ],
          )),
    );
  }
}
