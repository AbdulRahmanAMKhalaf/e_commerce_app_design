import 'package:e_commerce_app_design/screens/complete_profile_screen/complete_profile_screen_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RegisterScreenContent extends StatelessWidget {
  const RegisterScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey2=GlobalKey<FormState>();

    return Form(
      key: formKey2,
      child: ListView(
        padding: EdgeInsets.all(5.w),
        children: [
          SizedBox(height: 1.h,),
          Text('Register Account',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35.px,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 1.h,),
          Text('Complete your details or continue\nwith social media',
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
                hintText: 'R-enter your password',
                hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.5.h),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: '\t\tConfirm Password\t',
                floatingLabelAlignment: FloatingLabelAlignment.start,
                labelStyle: TextStyle(
                    fontSize: 22.px,
                    color: Colors.grey,
                    fontWeight: FontWeight.w800
                )
            ),
          ),
          SizedBox(height: 4.h,),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.px),
            child: MaterialButton(
              onPressed: () {
              /*  if(formKey2.currentState!.validate()){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(context)=>const CompleteProfileScreenView()
                  ),);
                }*/
                Navigator.push(context, MaterialPageRoute(
                    builder:(context)=>const CompleteProfileScreenView()
                ),);
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
              SizedBox(width: 2.w,),
              CircleAvatar(
                minRadius: 20.px,
                maxRadius: 30.px,
                backgroundColor: Colors.grey.shade100,
                child:  Image(image: const AssetImage('Assets/Images/twitter.png'),height: 3.h,width: 6.w,),
              ),
            ],
          ),
          SizedBox(height: 3.h,),
          Text('By continuing your confirm that you agree\nwith our Term and Condition',
         textAlign: TextAlign.center,
           style: TextStyle(
           color: Colors.grey.shade400,
           fontSize: 15.px,
           fontWeight: FontWeight.w600,
         ),
         ),
        ],
      ),
    );
  }
}
