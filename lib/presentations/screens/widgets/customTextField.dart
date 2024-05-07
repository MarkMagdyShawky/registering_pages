import 'package:flutter/material.dart';
import 'package:onboarding_signup_login_pages/core/resources/colorManager.dart';

class CustomTextField extends StatelessWidget {
  final String HintName;

  final IconData icone;

  const CustomTextField({super.key, required this.HintName, required this.icone,});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icone),
        hintText: "$HintName",
        fillColor: kSecondary,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kPrimary, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
