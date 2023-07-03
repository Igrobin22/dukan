// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:dukan/view/welcome3_screen.dart';

class Welcome2 extends StatelessWidget {
  const Welcome2({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.portrait)
        return Container(
          height: mediaQuery.height * 1,
          width: mediaQuery.width * 1,
          child: Column(
            children: [
              Container(
                height: mediaQuery.height * .6,
                width: mediaQuery.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0),
                  ),
                  color: Color(0xff0D1C2E)
                ),
                child: Image(
                  image: AssetImage('images/two.png'),
                  height: 50,
                  width: 50,
                ),
              ),
              SizedBox(height: mediaQuery.height * .04),
              Container(
                height: mediaQuery.height * 0.3,
                child: Column(
                  children: [
                    Text(
                      "Delievery",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: mediaQuery.height * .004),
                    Text(
                      "Faster your Imagination",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(height: mediaQuery.height * .06),
                    ElevatedButton(
                      onPressed: () {

                      },
                      child: Center(
                        child: Text(
                          'Get started',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  45.0), // Set the radius value here
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffc5EB6D),),
                          fixedSize: MaterialStateProperty.all<Size>(
                            Size(
                                mediaQuery.width * .9, mediaQuery.height * .07),
                          ) // Set the background color here
                          ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 4),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Prev',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffC5EB6D),
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 20,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Color(0xffC5EB6D),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                            color: Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffC5EB6D),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: mediaQuery.height * .001),
            ],
          ),
        );
      else
        return SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: mediaQuery.height * 1,
            width: mediaQuery.width * 1,
            child: Column(
              children: [
                Container(
                  height: mediaQuery.height * .5,
                  width: mediaQuery.width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                    color: Color(0xff0D1C2E),
                  ),
                  child: Image(
                    image: AssetImage('images/two.png'),
                    height: 50,
                    width: 50,
                  ),
                ),
                SizedBox(height: mediaQuery.height * .06),
                Container(
                  height: mediaQuery.height * 0.3,
                  child: Column(
                    children: [
                      Text(
                        "Delievery",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: mediaQuery.height * .002),
                      Text(
                        "Faster Your Imagination",
                        style: TextStyle(fontSize: 15),
                      ),
                      SizedBox(height: mediaQuery.height * .01),
                      ElevatedButton(
                        onPressed: () {

                        },
                        child: Center(
                          child: Text(
                            'Get started',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    45.0), // Set the radius value here
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            fixedSize: MaterialStateProperty.all<Size>(
                              Size(mediaQuery.width * .4,
                                  mediaQuery.height * .06),
                            ) // Set the background color here
                            ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height * .02),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Prev',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffC5EB6D),
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Color(0xffC5EB6D),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffC5EB6D),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mediaQuery.height * .001),
              ],
            ),
          ),
        );
    }));
  }
}
