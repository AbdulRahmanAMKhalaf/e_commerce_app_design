import 'package:e_commerce_app_design/screens/profile_screen/profile_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreenView extends StatelessWidget {
  const ProfileScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('Profile Account',
        style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 20.px,
          fontWeight: FontWeight.w600,
        ),
        ) ,
      ),
      body: const ProfileScreenContent(),
    );
  }
}
