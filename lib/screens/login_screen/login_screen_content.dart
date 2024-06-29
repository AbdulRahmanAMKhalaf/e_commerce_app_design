import 'package:e_commerce_app_design/screens/forget_password_screen/forget_screen_view.dart';
import 'package:e_commerce_app_design/screens/register_screen/register_screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey1=GlobalKey<FormState>();
    return Form(
      key: formKey1,
      child: ListView(
        padding: EdgeInsets.all(5.w),
        children: [
          SizedBox(height: 1.h,),
          Text('Welcome Back',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 35.px,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          ),
          SizedBox(height: 1.h,),
          Text('Sign in with your email and password\nor continue with social media',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.px,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10.h,),
          TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return 'Required Field';
              }else{
                return null;
              }
            },
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
          SizedBox(height: 5.h,),
          TextFormField(
            validator: (value) {
              if(value!.isEmpty){
                return 'Required Field';
              }else{
                return null;
              }
            },
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.px),
                    borderSide: BorderSide(color: Colors.grey,width: 2.px)
                ),
                suffixIcon: Icon(Icons.lock_outlined,color: Colors.grey,size: 25.px,),
                hintText: 'Enter your password',
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.5.h),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: '\t\tPassword\t',
                floatingLabelAlignment: FloatingLabelAlignment.start,
                labelStyle: TextStyle(
                    fontSize: 22.px,
                    color: Colors.grey,
                    fontWeight: FontWeight.w800
                )
            ),
          ),
          SizedBox(height: 2.h,),
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {},
                side: BorderSide(color: Colors.grey.shade500,width: 2.px),

              ),
              SizedBox(width: 0.1.w,),
              Text('Remember me',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w400,

              ),
              ),
              const Spacer(),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => const ForgetScreenView(),
                ),
                );
              },
                  child:Text(
                    'ForgotPassword',
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 14.px,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline
                    ),
                  ),
              ),
            ],
          ),
          SizedBox(height: 5.h,),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.px),
            child: MaterialButton(
              onPressed: () {
                if(formKey1.currentState!.validate());
              },
              height: 8.h,
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
          SizedBox(height: 5.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                minRadius: 20.px,
                maxRadius: 30.px,
                backgroundColor: Colors.grey.shade100,
                child: Icon(Icons.facebook,color: Colors.blue,size: 30.px,),
              ),
              SizedBox(width: 2.w,),
              CircleAvatar(
                minRadius: 20.px,
                maxRadius: 30.px,
                backgroundColor: Colors.grey.shade100,
                child:  Image(image: const AssetImage('Assets/Images/search.png'),height: 3.h,width: 6.w,),
              ),
              SizedBox(width:2.w,),
              CircleAvatar(
                minRadius: 20.px,
                maxRadius: 30.px,
                backgroundColor: Colors.grey.shade100,
                child:  Image(image: const AssetImage('Assets/Images/twitter.png'),height: 3.h,width: 6.w,),
              ),
            ],
          ),
          SizedBox(height: 3.h,),
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
      ),
    );
  }
}
