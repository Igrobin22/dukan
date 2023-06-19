import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:marquee/marquee.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size * 1;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: mediaQuery.height * 0.1,
        backgroundColor: Colors.white,
        title: Text(
          'Dukan',
          style: TextStyle(
              color: Colors.black, fontSize: mediaQuery.height * 0.05),
        ),
        actions: [
          ReusableAppbarIcon(
              mediaQuery: mediaQuery.height, icon: Icons.notifications),
          ReusableAppbarIcon(
            mediaQuery: mediaQuery.height,
            icon: Icons.shopping_bag,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            // main container of avatars widgets
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(bottom: mediaQuery.height * 0.005),
              color: Colors.white.withOpacity(0.2),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < 20; i++)
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(mediaQuery.height * 0.0001),
                            child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: GradientBoxBorder(
                                      width: 3,
                                      gradient: LinearGradient(colors: [
                                        Colors.purpleAccent,
                                        Colors.redAccent
                                      ]))),
                              child: CircleAvatar(
                                  radius: mediaQuery.height * 0.03,
                                  backgroundImage:
                                      AssetImage('images/ronaldo.jpg')),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Ronaldo',
                              style:
                                  TextStyle(fontSize: mediaQuery.height * 0.01),
                            ),
                          )
                        ],
                      ),
                  ],
                ),
              ),
            ),
            // add bar container

            Container(

              height: mediaQuery.height*0.03,
              color: Colors.green,
              child: Marquee(
                text: 'Har Order per 50 rupees ka discount.',
                style: TextStyle(fontSize: mediaQuery.height*0.02,color: Colors.white),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.start,
                blankSpace: 400.0,
                velocity: 50.0,
                pauseAfterRound: Duration(seconds: 1),
                startPadding: 0.0,
                accelerationDuration: Duration(seconds: 1),
                accelerationCurve: Curves.linear,
                decelerationDuration: Duration(milliseconds: 500),
                decelerationCurve: Curves.easeOut,
                textDirection:TextDirection.rtl ,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

class ReusableAppbarIcon extends StatelessWidget {
  const ReusableAppbarIcon({
    super.key,
    required this.mediaQuery,
    required this.icon,
  });

  final double mediaQuery;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Icon(
        size: mediaQuery * 0.06,
        icon,
        color: Colors.black,
      ),
    );
  }
}
