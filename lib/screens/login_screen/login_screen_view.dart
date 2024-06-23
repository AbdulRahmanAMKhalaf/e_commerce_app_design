import 'package:e_commerce_app_design/screens/login_screen/login_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Sign In',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 30.px,
          fontWeight: FontWeight.w600,
        ),
        ),
      ),
      body: const LoginScreenContent(),
    );
  }
}
