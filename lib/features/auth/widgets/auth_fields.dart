import 'package:flutter/material.dart';
import 'package:twiffer/theme/pallete.dart';

class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hinText;
  const AuthField({super.key, required this.controller, required this.hinText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Pallete.greyColor, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Pallete.blueColor),
          ),
          contentPadding: const EdgeInsets.all(22),
          hintText: hinText,
          hintStyle: const TextStyle(fontSize: 18)),
    );
  }
}
