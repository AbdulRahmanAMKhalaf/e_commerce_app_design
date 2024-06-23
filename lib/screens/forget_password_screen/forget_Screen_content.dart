import 'package:e_commerce_app_design/screens/register_screen/register_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgetScreenContent extends StatelessWidget {
  const ForgetScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.w),
      children: [
        SizedBox(height: 1.h,),
        Text('Forgot Password',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35.px,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 1.h,),
        Text('Pleaze enter your email and we will send\nyou a link to return to your account',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.px,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10.h,),
        TextFormField(
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.px),
                  borderSide: BorderSide(color: Colors.grey,width: 2.px)
              ),
              suffixIcon: Icon(Icons.email_outlined,color: Colors.grey,size: 25.px,),
              hintText: 'Enter your email',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.5.h),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: '\t\tEmail\t',
              floatingLabelAlignment: FloatingLabelAlignment.start,
              labelStyle: TextStyle(
                  fontSize: 22.px,
                  color: Colors.grey,
                  fontWeight: FontWeight.w800
              )
          ),
        ),
        SizedBox(height: 7.h,),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.px),
          child: MaterialButton(
            onPressed: () {
            },
            height: 8.h,
            color: HexColor('#df6f47'),
            child: Center(
              child: Text(
                'Cotinue',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20.px,
                    color: Colors.grey.shade200),
              ),
            ),
          ),
        ),
        SizedBox(height: 5.h,),
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account?',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.px,
                fontWeight: FontWeight.w700,
              ),
            ),
            TextButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const RegisterScreenView(),
                  ),
                  );
                },
                child: Text('Sign Up',
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 17.px,
                      fontWeight: FontWeight.w700
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
