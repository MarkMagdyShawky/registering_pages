import 'package:flutter/material.dart';
import 'package:onboarding_signup_login_pages/core/resources/colorManager.dart';


class CustomSubtitle extends StatelessWidget {
  final String title;

  const CustomSubtitle({super.key, required this.title,});

  @override
  Widget build(BuildContext context) {
    return  Text(
      "$title",
      style: TextStyle(
        fontSize: 19,
      ),
      textAlign: TextAlign.center,
    );
  }
}
