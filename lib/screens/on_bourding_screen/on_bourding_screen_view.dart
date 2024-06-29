import 'package:e_commerce_app_design/bloc/bourding_bloc.dart';
import 'package:e_commerce_app_design/screens/on_bourding_screen/on_bourding_screen_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBourdingScreenView extends StatelessWidget {
  const OnBourdingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => BourdingBloc(),
        child: const OnBourdingScreenContent(),
      ),
    );
  }
}
