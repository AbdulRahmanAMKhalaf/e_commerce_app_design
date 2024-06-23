import 'package:e_commerce_app_design/model/category_model.dart';
import 'package:e_commerce_app_design/model/popular_product_model.dart';
import 'package:e_commerce_app_design/screens/profile_screen/profile_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(5.w),
        children: [
          Row(
            children: [
              SizedBox(
                width: 60.w,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      hintText: 'Search Product',
                      hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w600),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.px,
                        color: Colors.grey.shade400,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.px),
                      )),
                ),
              ),
              SizedBox(
                width: 2.w,
              ),
              IconButton.filled(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Colors.grey.shade200),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey,
                    size: 30.px,
                  )),
              SizedBox(
                width: 2.w,
              ),
              CircleAvatar(
                radius: 25.px,
                backgroundColor: Colors.grey.shade200,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreenView(),
                        ),);
                  },
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 25.px,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            width: double.infinity,
            height: 13.h,
            decoration: BoxDecoration(
                color: HexColor('#392682'),
                borderRadius: BorderRadius.circular(15.px)),
            child: Padding(
              padding: EdgeInsets.all(5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'A Summer Surpise',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.px,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Cashback 20%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.px,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          SizedBox(
            height: 17.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 15.w,
                        height: 7.h,
                        decoration: BoxDecoration(
                          color: HexColor('#fce9da'),
                          borderRadius: BorderRadius.circular(15.px),
                          image: DecorationImage(
                            scale: 5.w,
                            image: AssetImage(categoryList[index].image),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        categoryList[index].name,
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 3.w,
                    ),
                itemCount: categoryList.length),
          ),
          SizedBox(
            height: 3.h,
          ),
          Row(
            children: [
              Text(
                'Special for you',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.px,
                ),
              ),
              const Spacer(),
              Text(
                'See More',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 17.px,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 17.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.px),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(popProductList[index].image),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.w, bottom: 5.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popProductList[index].headTitle,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 20.px,
                              ),
                            ),
                            Text(
                              popProductList[index].explain,
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 15.px,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 3.w,
                    ),
                itemCount: popProductList.length),
          ),
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Text(
                'Popular Product',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                  fontSize: 20.px,
                ),
              ),
              const Spacer(),
              Text(
                'See More',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 17.px,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          SizedBox(
            height: 30.h,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 30.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.px),
                          child: SizedBox(
                            height: 15.h,
                            width: 30.w,
                            child: Image(
                              image: AssetImage(popProductList[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          popProductList[index].explain,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              '64.99',
                              style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Spacer(),
                            IconButton.filledTonal(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                  size: 25.px,
                                ))
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      width: 3.w,
                    ),
                itemCount: popProductList.length),
          )
        ],
      ),
    );
  }
}
