import 'package:e_commerce_app_design/screens/home_screen/home_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OtpScreenContent extends StatelessWidget{
  const OtpScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.w),
      children: [
        SizedBox(height: 1.h,),
        Text('We sent your code to your +962 77013****\nThis code will expired in 00:30',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18.px,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 5.h,),
        Icon(Icons.lock_outlined,color: Colors.deepOrange,size: 80.px,),
        SizedBox(height: 3.h,),
        Text('Enter the code',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey.shade300,
          fontSize: 20.px,
          fontWeight: FontWeight.w600
        ),
        ),
        SizedBox(height: 3.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
             width: 26.w,
             height: 8.h,
             child: TextFormField(
               style: const TextStyle(
                 color: Colors.black
               ),
               obscureText: true,
               keyboardType: TextInputType.number,
               textAlignVertical: TextAlignVertical.center,
               decoration: InputDecoration(
                 contentPadding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.w),
                 enabled: true,
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15.px),
                   borderSide: BorderSide(color: Colors.grey,width: 1.5.px)
                 )
               ),
             ),
           ),
           const Spacer(),
            SizedBox(
              height: 8.h,
              width: 16.w,
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black
                ),
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.w),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.px),
                        borderSide: BorderSide(color: Colors.grey,width: 1.5.px)
                    )
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 8.h,
              width: 16.w,
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black
                ),
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.w),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.px),
                        borderSide: BorderSide(color: Colors.grey,width: 1.5.px)
                    )
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 8.h,
              width: 16.w,
              child: TextFormField(
                style: const TextStyle(
                    color: Colors.black
                ),
                obscureText: true,
                keyboardType: TextInputType.number,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 16.w),
                    enabled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.px),
                        borderSide: BorderSide(color: Colors.grey,width: 1.5.px)
                    )
                ),
              ),
            ),
          ],
        ),
        SizedBox(height:7.h,),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.px),
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder:(context)=>const HomeScreenView(),
                  ));
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
        SizedBox(height: 10.h,),
        TextButton(
            onPressed: (){},
            child: Text(
              'Resend OTP Code',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 17.px,
                decoration: TextDecoration.underline
              ),
            ),
        ),
        SizedBox(height: 9.h,),
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
