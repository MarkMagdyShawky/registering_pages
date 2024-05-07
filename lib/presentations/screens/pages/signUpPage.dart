
import 'package:flutter/material.dart';
import 'package:onboarding_signup_login_pages/core/resources/colorManager.dart';
import 'package:onboarding_signup_login_pages/core/resources/imageManager.dart';
import 'package:onboarding_signup_login_pages/core/resources/stingManager.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customMaterialButton.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customSubtitle.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customTextButton.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customTextField.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customTitle.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              // part1 first 2 text:
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
                child: Column(
                  children: [
                    //title
                    CustomTitle(title: StringManager.SignUpTitle,),
                    SizedBox(
                      height: 25,
                    ),
                    // caption
                    CustomSubtitle(title: StringManager.SignUpSubtitle),
                  ],
                ),
              ),
              // Text Fields
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomTextField(HintName: "Email",icone: Icons.email_rounded,)
,
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextField(HintName: "Password",icone: Icons.password_outlined,)
                    ,
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextField(HintName: "Confirm Password",icone: Icons.password_outlined,)
                    ,
                  ],
                ),
              ),
              SizedBox(height: 45,),
              //   sign up btn
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    CustomMaterialButton(BtnName: "Sign Up", BtnWidth: 140,NextPage: "Login",),
                    SizedBox(
                      height: 30,
                    ),
                    // Text btn2
                    CustomTextButton(BtnName: "Already have an account", NextPage: "Login")
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Or continue with",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      color: kSecondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image(image: AssetImage(ImageManager.Google)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      color: kSecondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.facebook,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 45,
                    width: 50,
                    decoration: BoxDecoration(
                      color: kSecondary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.apple,
                      size: 30,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
