import 'package:e_commerce_app_design/screens/otp_screen/otp_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CompleteProfileScreenContent extends StatelessWidget {
  const CompleteProfileScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.w),
      children: [
        SizedBox(height: 1.h,),
        Text('Complete Profile',
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
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.px),
                  borderSide: BorderSide(color: Colors.grey,width: 2.px)
              ),
              suffixIcon: Icon(Icons.person,color: Colors.grey,size: 25.px,),
              hintText: 'Enter yourfirst name',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.5.h),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: '\t\tFirst Name\t',
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
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.px),
                  borderSide: BorderSide(color: Colors.grey,width: 2.px)
              ),
              suffixIcon: Icon(Icons.person,color: Colors.grey,size: 25.px,),
              hintText: 'Enter your last name',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.5.h),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: '\t\tLast Name\t',
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
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.px),
                  borderSide: BorderSide(color: Colors.grey,width: 2.px)
              ),
              suffixIcon: Icon(Icons.phone_android,color: Colors.grey,size: 25.px,),
              hintText: 'Enter your phone number',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.5.h),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: '\t\tPhone Number\t',
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
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.px),
                  borderSide: BorderSide(color: Colors.grey,width: 2.px)
              ),
              suffixIcon: Icon(Icons.location_on_outlined,color: Colors.grey,size: 25.px,),
              hintText: 'Enter your Address',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.5.h),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelText: '\t\tAddress\t',
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
              Navigator.push(context, MaterialPageRoute(
                  builder:(context)=>const OtpScreenView()
              ),);
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
        Text('By continuing your confirm that you agree\nwith our Term and Condition',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 15.px,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
