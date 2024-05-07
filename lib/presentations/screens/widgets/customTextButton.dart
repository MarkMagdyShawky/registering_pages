import 'package:flutter/material.dart';
import 'package:onboarding_signup_login_pages/core/resources/colorManager.dart';
import 'package:onboarding_signup_login_pages/core/resources/fontSizeManager.dart';

class CustomTextButton extends StatelessWidget {
  final String BtnName;
final String NextPage;

  const CustomTextButton(
      {super.key, required this.BtnName, required this.NextPage,});

  @override
  Widget build(BuildContext context) {
    return  TextButton(
        onPressed: () { Navigator.of(context).pushNamed(NextPage);},
        child: Text(
          "$BtnName",
          style: TextStyle(
            fontSize: FontSizeManager.f20,
            color: Colors.black,
          ),
        ));
  }
}
