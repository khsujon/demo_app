import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Center(
            child: Image.asset(
              'assets/images/app_logo.png',
              height: 120,
            ),
          ),
        )));
  }
}
