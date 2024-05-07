import 'package:flutter/material.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/pages/loginPage.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/pages/onboardingPage.dart';
import 'package:onboarding_signup_login_pages/presentations/screens/pages/signUpPage.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Acme-Regular"),
      home: OnBoardingPage(),
      routes: {
        "Login": (context) => LoginPage(),
        "Signup": (context) => SignUpPage(),
        "Onboarding": (context) => OnBoardingPage(),
      },
    );
  }
}
