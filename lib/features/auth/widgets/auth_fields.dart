import 'package:flutter/material.dart';
import 'package:twiffer/theme/pallete.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  const AuthField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Pallete.blueColor))),
    );
  }
}
