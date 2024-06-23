import 'package:e_commerce_app_design/model/on_bourding_model.dart';
import 'package:e_commerce_app_design/screens/login_screen/login_screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBourdingScreenContent extends StatelessWidget {
  OnBourdingScreenContent({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: PageView.builder(
              itemBuilder:(context,index)=>Image(
                 fit: BoxFit.cover,
                  image: AssetImage(
                    bourdingList[index].image
                  ),
              ),
            itemCount: bourdingList.length,
          ),
        ),
        
      ],
    );
  }
}
/* Container(
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
                  Text(bourdingList[index].title,
                  textAlign: TextAlign.center,
                    style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30.px,
                    fontWeight: FontWeight.w800,
        
                  ),
                  ),
                  SizedBox(height: 1.5.h,),
                  Text(bourdingList[index].text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 15.px,
                  fontWeight: FontWeight.w800,
                ),
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
                              builder:(context)=>const LoginScreenView(),
                            ),
                          );
                        },
                        height:7.h,
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
          ),*/