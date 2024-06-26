import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onboarding_signup_login_pages/core/resources/colorManager.dart';
import 'package:onboarding_signup_login_pages/core/resources/fontSizeManager.dart';
import 'package:onboarding_signup_login_pages/core/resources/imageManager.dart';
import 'package:onboarding_signup_login_pages/core/resources/sizeManager.dart';
import 'package:onboarding_signup_login_pages/core/resources/stingManager.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customMaterialButton.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customSubtitle.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customTextButton.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/widgets/customTitle.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            // Image
            Padding(
              padding: const EdgeInsets.all(30),
              child: SvgPicture.asset(
                ImageManager.onBoarding,
                height: SizeValueManager.h400,
              ),
            ),
            // Text 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: CustomTitle(title: StringManager.OnBoardingDisc,)
            )
            // Text2
            ,
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: CustomSubtitle(title: StringManager.OnBoardingDisc2),
            ),
            // Buttons :
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 65),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Login btn
                  CustomMaterialButton(
                    BtnName: "Login",
                    BtnWidth: 60.0,
                    NextPage: "Login",
                  ),
                  //Register btn
                  CustomTextButton(BtnName: "Register",NextPage: "Signup",)
                ],
              ),
            )
          ],
        )
      ],
    ));
  }
}
