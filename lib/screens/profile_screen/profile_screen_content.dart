import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileScreenContent extends StatelessWidget {
  const ProfileScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(5.w),
      children: [
       Center(
         child: Stack(
           alignment: Alignment.bottomRight,
           children: [
             CircleAvatar(
               backgroundColor: Colors.grey.shade200,
               radius: 60.px,
               child: Icon(Icons.person,color: Colors.black,size: 60.px,),
               ),
            Padding(
              padding: EdgeInsets.only(bottom: 1.h,right: 1.h),
              child: Container(
                width: 8.w,
                height: 3.h,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,

                ),
                child: Icon(Icons.add,color: Colors.black,size: 20.px,),
              ),
            ),
           ],
         ),
       ),
        SizedBox(height: 5.h,),
        Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(10.px)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.person,color: Colors.deepOrange.shade300,size: 30.px,),
               SizedBox(width: 2.w,),
                Text('My Account',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15.px
                ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 25.px,)
              ],
            ),
          ),
        ),
        SizedBox(height: 3.h,),
        Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10.px)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.notifications,color: Colors.deepOrange.shade300,size: 30.px,),
                SizedBox(width: 2.w,),
                Text('Notifications',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.px
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 25.px,)
              ],
            ),
          ),
        ),
        SizedBox(height: 3.h,),
        Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10.px)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.settings,color: Colors.deepOrange.shade300,size: 30.px,),
                SizedBox(width: 2.w,),
                Text('Settings',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.px
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 25.px,)
              ],
            ),
          ),
        ),
        SizedBox(height: 3.h,),
        Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10.px)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.help,color: Colors.deepOrange.shade300,size: 30.px,),
                SizedBox(width: 2.w,),
                Text('Help Center',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.px
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 25.px,)
              ],
            ),
          ),
        ),
        SizedBox(height: 3.h,),
        Container(
          height: 7.h,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10.px)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.logout,color: Colors.deepOrange.shade300,size: 30.px,),
                SizedBox(width: 2.w,),
                Text('Log Out',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15.px
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_forward_ios,color: Colors.black,size: 25.px,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
