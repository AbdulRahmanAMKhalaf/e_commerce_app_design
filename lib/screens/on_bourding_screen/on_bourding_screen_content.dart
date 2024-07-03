import 'package:e_commerce_app_design/bloc/bourding_bloc.dart';
import 'package:e_commerce_app_design/model/on_bourding_model.dart';
import 'package:e_commerce_app_design/screens/login_screen/login_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBourdingScreenContent extends StatelessWidget {
  const OnBourdingScreenContent({super.key,});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<BourdingBloc>();
    final PageController pageController = PageController();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView.builder(
          itemBuilder: (context, index) =>
              Image(
                fit: BoxFit.cover,
                image: AssetImage(
                    bourdingList[index].image
                ),
              ),
          controller: pageController,
          onPageChanged: (value) {
            bloc.index = value;
            bloc.add(ChangeTextEvent());
          },
          itemCount: bourdingList.length,
        ),
        Container(
          height: 41.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: HexColor('#eccd9e'),
                width: 1.5.w,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(90.px),
              )
          ),
          child: Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlocBuilder<BourdingBloc, BourdingState>(
                  builder: (context, state) {
                    return AnimatedDefaultTextStyle(
                        maxLines: 2,
                        curve: Curves.decelerate,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30.px,
                          fontWeight: FontWeight.w800,
                        ),
                        duration: const Duration(milliseconds: 1200),
                        child: Text(bourdingList[bloc.index].title,
                          textAlign: TextAlign.center,
                        ));
                  },
                ),
                SizedBox(height: 1.5.h,),
                BlocBuilder<BourdingBloc, BourdingState>(
                  builder: (context, state) {
                    return AnimatedDefaultTextStyle(
                        curve: Curves.decelerate,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 15.px,
                          fontWeight: FontWeight.w800,
                        ),
                        duration: const Duration(milliseconds: 1200),
                        child: Text(bourdingList[bloc.index].text,
                          textAlign: TextAlign.center,
                        ));
                  },
                ),
                SizedBox(height: 2.5.h,),
                SmoothPageIndicator(
                  controller: pageController,
                  count: bourdingList.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: HexColor('#df6f47'),
                      dotColor: Colors.grey.shade300,
                      dotHeight: 1.h,
                      dotWidth: 2.w,
                      expansionFactor: 0.7.w,
                      spacing: 00.5.w),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.px),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreenView(),
                          ),
                        );
                      },
                      height: 7.h,
                      color: HexColor('#df6f47'),
                      child: Center(
                        child: Text(
                          'Cotinue',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 30.px,
                              color: Colors.grey.shade200),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
