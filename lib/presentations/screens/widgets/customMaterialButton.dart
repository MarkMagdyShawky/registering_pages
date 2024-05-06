import 'package:flutter/material.dart';
import 'package:onboarding_signup_login_pages/core/resources/colorManager.dart';

class CustomMaterialButton extends StatelessWidget {
  final String BtnName;

  final double BtnWidth;

  const CustomMaterialButton(
      {super.key, required this.BtnName, required this.BtnWidth});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: kPrimary,
      padding: EdgeInsets.symmetric(horizontal: BtnWidth, vertical: 15),
      elevation: 5,
      textColor: Colors.white,
      focusColor: kSecondary,
      child: Text(
        "$BtnName",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
