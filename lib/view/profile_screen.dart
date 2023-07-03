import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dukan/view/home_screen.dart';
import 'package:dukan/view/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:get/get.dart';

import '../reusable_bottomnavibar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.white,
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.only(top: 70, left: 5.0, right: 5.0),
                  height: 265,
                  width: 330.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('images/cardup.png'))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 3),
                            height: 30.h,
                            width: 90.w,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'All Time',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Rs. 0',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Color(0xffC0E862)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Total Sales',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                        Divider(
                          color: Colors.white,
                          indent: 50,
                          endIndent: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '0',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Completed\nOrders',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Rs. 0',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Total Profit',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Rs. 0',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Total Bonus',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ReusableHeadingText(
                  alignment: Alignment.centerLeft,
                  title: 'Account',
                ),
                SizedBox(
                  height: 10.0,
                ),
                ReusableListCard(
                  title: 'My Profit',
                  icon: Icons.account_box_outlined,
                ),
                ReusableListCard(
                  title: 'Business Details',
                  icon: Icons.business_sharp,
                ),
                ReusableListCard(
                  title: 'Payment Method',
                  icon: Icons.payment,
                ),
                ReusableListCard(
                  title: 'Followed Shops',
                  icon: Icons.store_outlined,
                ),
                ReusableListCard(
                  title: 'Catalogs Viewed',
                  icon: Icons.analytics_outlined,
                ),
                ReusableListCard(
                  title: 'Favorites',
                  icon: Icons.favorite_border,
                ),
                ReusableListCard(
                  title: 'Shared Items',
                  icon: Icons.share_outlined,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ReusableHeadingText(
                  alignment: Alignment.centerLeft,
                  title: 'Help & Support',
                ),
                SizedBox(
                  height: 10.0,
                ),
                ReusableListCard(
                  title: 'Help',
                  icon: Icons.help_outline_outlined,
                ),
                ReusableListCard(
                  title: 'Terms & Conditions',
                  icon: Icons.fact_check_outlined,
                ),
                ReusableListCard(
                  title: 'Privacy Policy',
                  icon: Icons.verified_user_outlined,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ReusableHeadingText(
                  title: 'Follow us on Social',
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterSocialButton(
                      onTap: () {},
                      mini: true, //just pass true for mini circle buttons
                      buttonType: ButtonType
                          .twitter, // Button type for different type buttons
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FlutterSocialButton(
                      onTap: () {},
                      mini: true, //just pass true for mini circle buttons
                      buttonType: ButtonType
                          .facebook, // Button type for different type buttons
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: ReusableBottomNaviBar(currentIndex: 4,)
      ),
    );
  }
}

class ReusableHeadingText extends StatelessWidget {
  final String title;
  final Alignment alignment;
  const ReusableHeadingText({
    super.key,
    required this.title,
    required this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        alignment: alignment,
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
  }
}

class ReusableListCard extends StatelessWidget {
  final String title;
  final IconData icon;
  const ReusableListCard({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),
      leading: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Shadow color
                spreadRadius: 1, // Spread radius
                blurRadius: 4, // Blur radius
                offset: Offset(0, 3), // Offset in x and y direction
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            icon,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }
}
