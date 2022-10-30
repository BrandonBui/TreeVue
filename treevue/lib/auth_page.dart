import 'package:flutter/material.dart';
import 'package:treevue/SignInPage.dart';
import 'package:treevue/SignUpPage.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return signIn(showSignupPage: toggleScreens);
    } else {
      return signUp(showLoginPage: toggleScreens);
    }
  }
}
