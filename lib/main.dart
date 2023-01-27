import 'package:flutter/material.dart';
import 'package:twiffer/features/auth/view/login.dart';
import 'package:twiffer/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: AppTheme.theme, home: const LoginView());
  }
}
