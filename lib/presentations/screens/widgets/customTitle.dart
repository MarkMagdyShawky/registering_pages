import 'package:flutter/material.dart';
import 'package:onboarding_signup_login_pages/core/resources/colorManager.dart';


class CustomTitle extends StatelessWidget {
final String title;

  const CustomTitle({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    return  Text(
      "$title",
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: kPrimary,
      ),
      textAlign: TextAlign.center,
    );
  }
}
