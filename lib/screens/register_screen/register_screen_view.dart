import 'package:e_commerce_app_design/screens/register_screen/register_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreenView extends StatelessWidget {
  const RegisterScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.grey.shade400,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Sign Up',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 30.px,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const RegisterScreenContent(),
    );
  }
}
