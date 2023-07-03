import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:marquee/marquee.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:dukan/controller/homeScreenController.dart';
import 'package:like_button/like_button.dart';
import '../reusable_bottomnavibar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  final CarouselController carouselController = CarouselController();
  List adsList = [
    {"id": 1, "images": 'images/ad1.jpg'},
    {"id": 2, "images": 'images/ad2.jpg'},
    {"id": 3, "images": 'images/ad3.jpg'}
  ];
  int currentIndex = 0;
  List storiesList = [
    {"food": "Hamburger"},
    {"food": "Cheese burger"},
    {"food": "French Fries"},
    {"food": "Chicken Nuggets"},
    {"food": "Hot Dog"},
    {"food": "Pizza"},
    {"food": "Tacos"},
    {"food": "Burritos"},
    {"food": "Fried Chicken"},
    {"food": "Chicken Wings"},
    {"food": "Onion Rings"},
    {"food": "Milkshake"},
    {"food": "Ice Cream"},
    {"food": "Soft Serve"},
    {"food": "Nachos"},
    {"food": "Quesadilla"},
    {"food": "Sliders"},
    {"food": "Chicken Sandwich"},
    {"food": "Fish and Chips"},
    {"food": "Donuts"}
  ];


  @override
  Widget build(BuildContext context) {
    // Lock screen rotation
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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

                }),
            IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.bagShopping,
                  size: 25.sp,
                  color: Colors.black,
                ),
                onPressed: () {

                }),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                // main container of avatars widgets
                Container(
                  alignment: Alignment.center,
                  height: 130,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 80.0,
                              width: 80.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                border: GradientBoxBorder(
                                  width: 3,
                                  gradient: LinearGradient(colors: [
                                    Colors.purpleAccent,
                                    Colors.redAccent
                                  ]),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundImage:
                                      AssetImage('images/ronaldo.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                              child: Text(
                                storiesList[index]["food"],
                                softWrap: true,
                                maxLines: 2, // Set the maximum number of lines
                                overflow: TextOverflow
                                    .ellipsis, // Truncate the text with ellipsis
                                textAlign: TextAlign.center,
                                textWidthBasis: TextWidthBasis.parent,
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: storiesList.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                // add bar container

                Container(
                  alignment: Alignment.center,
                  height: 35.h,
                  color: Color(0xffC0E862),
                  child: Marquee(
                    text: 'Har Order per 50 rupees ka discount.',
                    style: TextStyle(fontSize: 15.sp, color: Colors.black),
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    blankSpace: 400.0,
                    velocity: 50.0,
                    // pauseAfterRound: Duration(seconds: 1),
                    startPadding: 20.0,
                    accelerationDuration: Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                    textDirection: TextDirection.rtl,
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: CarouselSlider(
                    items: adsList
                        .map((item) => Image.asset(
                              item['images'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ))
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      aspectRatio: 2.5,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        homeScreenController.slidervalueUpdater(index);
                        // print(homeScreenController.sliderValueReturn());

                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: adsList.asMap().entries.map((entry) {
                    return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: GetBuilder<HomeScreenController>(
                          builder: (homeScreenController) {
                            return Container(
                              width: homeScreenController
                                          .sliderValueReturn()
                                          .value ==
                                      entry.key
                                  ? 17
                                  : 7,
                              height: 7.0,
                              margin: const EdgeInsets.only(
                                  left: 3.0, right: 3.0, top: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: homeScreenController
                                              .sliderValueReturn()
                                              .value ==
                                          entry.key
                                      ? Colors.green
                                      : Colors.teal),
                            );
                          },
                        ));
                  }).toList(),
                ),
                ReusableRowText(
                  leftText: 'Top Categories',
                  rightText: 'See all',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/ad1.jpg'))),
                    ),
                    Container(
                      height: 100.h,
                      width: 160.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('images/ad1.jpg'))),
                    ),
                  ],
                ),
                ReusableRowText(
                  leftText: 'Choose Category',
                  rightText: 'See all',
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            homeScreenController.selectedButton(0);
                          },
                          child: Obx(
                            () => Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                bottom: 10.0,
                              ),
                              height: 25.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: homeScreenController.getButtonColor(0),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                  child: Text(
                                'All',
                                style: TextStyle(fontSize: 15.sp),
                              )),
                            ),
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            homeScreenController.selectedButton(1);
                          },
                          child: Obx(
                            () => Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                bottom: 10.0,
                              ),
                              height: 25.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: homeScreenController.getButtonColor(1),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                  child: Text(
                                'Burger',
                                style: TextStyle(fontSize: 15.sp),
                              )),
                            ),
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            homeScreenController.selectedButton(2);
                          },
                          child: Obx(
                            () => Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                bottom: 10.0,
                              ),
                              height: 25.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: homeScreenController.getButtonColor(2),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                  child: Text(
                                'Pizza',
                                style: TextStyle(fontSize: 15.sp),
                              )),
                            ),
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            homeScreenController.selectedButton(3);
                          },
                          child: Obx(
                            () => Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                bottom: 10.0,
                              ),
                              height: 25.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: homeScreenController.getButtonColor(3),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                  child: Text(
                                'Fries',
                                style: TextStyle(fontSize: 15.sp),
                              )),
                            ),
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                      GestureDetector(
                          onTap: () {
                            homeScreenController.selectedButton(4);
                          },
                          child: Obx(
                            () => Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                bottom: 10.0,
                              ),
                              height: 25.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                  color: homeScreenController.getButtonColor(4),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: Center(
                                  child: Text(
                                'Shawarma',
                                style: TextStyle(fontSize: 15.sp),
                              )),
                            ),
                          )),
                      SizedBox(
                        width: 10.w,
                      ),
                    ],
                  ),
                ),
                for (int i = 1; i < 10; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // card
                      Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.6), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 4, // Blur radius
                                  offset: Offset(
                                      0, 2), // Offset in the x and y direction
                                ),
                              ]),
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
                              SizedBox(height: 5.h),
                              Padding(
                                padding: EdgeInsets.only(left: 4, right: 4).r,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special Pizza',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.sp),
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
                              SizedBox(height: 5.h),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 8.0, right: 8.0).r,
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
                      // card end
                      Padding(
                        padding: EdgeInsets.all(8.r),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey
                                      .withOpacity(0.6), // Shadow color
                                  spreadRadius: 2, // Spread radius
                                  blurRadius: 4, // Blur radius
                                  offset: Offset(
                                      0, 2), // Offset in the x and y direction
                                ),
                              ]),
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
                              SizedBox(height: 5.h),
                              Padding(
                                padding: EdgeInsets.only(left: 4, right: 4).r,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Special Pizza',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.sp),
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
                              SizedBox(height: 5.h),
                              Padding(
                                padding:
                                    EdgeInsets.only(left: 8.0, right: 8.0).r,
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
                      // card end
                    ],
                  )
              ],
            ),
          ),
        ),
        // Initialize the current index

        bottomNavigationBar: ReusableBottomNaviBar(
          currentIndex: 0,
        ));
  }
}

class ReusableRowText extends StatelessWidget {
  const ReusableRowText({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.sp),
          ),
          Text(
            rightText,
            style: TextStyle(fontSize: 16.sp, color: Colors.green[400]),
          ),
        ],
      ),
    );
  }
}
