import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dukan/view/home_screen.dart';
import 'package:dukan/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:get/get.dart';

import '../reusable_bottomnavibar.dart';

class SearchScreen extends StatefulWidget {


  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
   int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size * 1;
    final mediaQueryFont = MediaQuery.of(context).textScaleFactor;
    final mediaQueryPad = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading :false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,

        title: Text(
          'Dukan',
          style: TextStyle(color: Colors.black, fontSize: 35.sp),
        ),
        actions: [
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.bell,
                size: 25.sp,
                color: Colors.black,
              ),
              onPressed: () {
                print("bell");
              }),
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.bagShopping,
                size: 25.sp,
                color: Colors.black,
              ),
              onPressed: () {
                print("bell");
              }),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10, right: 25),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffffffff),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.6), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 4, // Blur radius
                              offset: Offset(
                                  0, 2), // Offset in the x and y direction
                            ),
                          ]),
                      child: Icon(
                        Icons.lock,
                        size: 25,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.tune,
                    color: Colors.black,
                    size: 28,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Searching...'),
            SizedBox(
              height: 10.0,
            ),
            Expanded(


              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding:  EdgeInsets.all(8.r),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),

                              boxShadow: [BoxShadow(
                                color:
                                Colors.grey.withOpacity(0.6), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(
                                    0, 2), // Offset in the x and y direction
                              ),]
                          ),
                          height: 200.h,
                          width: 140.w,
                          child: Column(
                            children: [
                              Container(
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/ad3.jpg'))),
                              ),
                              SizedBox(height:5.h),

                              Padding(
                                padding: EdgeInsets.only(
                                    left: 4,

                                    right: 4).r,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special Pizza',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,fontSize: 13.sp),
                                    ),
                                    LikeButton(
                                      size: 30.sp,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4).r,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'With tommato sauce',
                                      style: TextStyle(fontSize: 10.r),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height:5.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0).r,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Rs.999',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Container(

                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 25.sp,

                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),Padding(
                        padding:  EdgeInsets.all(8.r),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),

                              boxShadow: [BoxShadow(
                                color:
                                Colors.grey.withOpacity(0.6), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 4, // Blur radius
                                offset: Offset(
                                    0, 2), // Offset in the x and y direction
                              ),]
                          ),
                          height: 200.h,
                          width: 140.w,
                          child: Column(
                            children: [
                              Container(
                                height: 100.h,
                                width: 140.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.white,
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage('images/ad3.jpg'))),
                              ),
                              SizedBox(height:5.h),

                              Padding(
                                padding: EdgeInsets.only(
                                    left: 4,

                                    right: 4).r,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special Pizza',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,fontSize: 13.sp),
                                    ),
                                    LikeButton(
                                      size: 30.sp,
                                      padding: EdgeInsets.zero,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4).r,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'With tommato sauce',
                                      style: TextStyle(fontSize: 10.r),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height:5.h),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8.0,
                                    right: 8.0).r,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Rs.999',
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Container(

                                      height: 30.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          shape: BoxShape.circle),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 25.sp,

                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 5,
                scrollDirection: Axis.vertical,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ReusableBottomNaviBar(currentIndex: 2,)
    );
  }
}
// TextField(
//
// textAlign: TextAlign.start,
// decoration: InputDecoration(
//
// filled: true,
// fillColor: Color(0xff0E0E0E).withOpacity(0.03),
// border: OutlineInputBorder(
// borderSide: BorderSide.none,
// borderRadius: BorderRadius.circular(50)),
// contentPadding: EdgeInsets.only(right: 15,),
// hintText: 'Password',
// hintStyle: TextStyle(
// fontSize: 18,
// ),
//
// prefixIcon: Padding(
// padding: EdgeInsets.only(left: 10, right: 25),
// child: Container(
// margin: EdgeInsets.symmetric(vertical: 10),
// height: 40,
// width: 40,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(50),
// color: Color(0xffffffff),
// boxShadow: [
// BoxShadow(
// color: Colors.grey
//     .withOpacity(0.6), // Shadow color
// spreadRadius: 2, // Spread radius
// blurRadius: 4, // Blur radius
// offset: Offset(0,
// 2), // Offset in the x and y direction
// ),
// ]),
// child: Icon(
// Icons.lock,
// size: 25,
// color: Color(0xff000000),
// ),
// ),
// ),
// suffix: Icon(Icons.remove_red_eye_sharp,size: 28,),
// ),
// ),
