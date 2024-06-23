import 'dart:math';

import 'package:e_commerce_app_design/screens/home_screen/home_screen_content.dart';
import 'package:flutter/material.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenContent(),
    );
  }
}
