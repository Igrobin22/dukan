import 'package:flutter/material.dart';
import 'package:dukan/view/signup_screen.dart';

class Signin_screen extends StatelessWidget {
  const Signin_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: OrientationBuilder(
          builder: (context, orientation) {
            //TODO: 1. ORIENTATION IF

            if (orientation == Orientation.portrait) {
              return Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //TODO:Container for Top Image

                      Container(
                        width: mediaQuery.width * 1,
                        height: mediaQuery.height * .3,
                        decoration: BoxDecoration(
                          //  color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage('images/background.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 40.0, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Sign in to your Account',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xffffffff).withOpacity(.71),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //TODO:Container for TextFields
                      Container(
                        width: mediaQuery.width * 1,
                        height: mediaQuery.height * .27,
                        margin: EdgeInsets.only(top: 18),
                        // color: Colors.tealAccent.withOpacity(.6),
                        padding:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //TODO:TEXTFIELD1
                            TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50)),
                                contentPadding: EdgeInsets.only(
                                  top: 15,
                                  bottom: 15,
                                  right: 15,
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                ),
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
                                            color: Colors.grey.withOpacity(
                                                0.6), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 4, // Blur radius
                                            offset: Offset(0,
                                                2), // Offset in the x and y direction
                                          ),
                                        ]),
                                    child: Icon(
                                      Icons.mail,
                                      size: 25,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //TODO:TEXTFIELD2
                            TextField(
                              textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50)),
                                contentPadding: EdgeInsets.only(
                                  right: 15,
                                ),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                ),
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
                                            color: Colors.grey.withOpacity(
                                                0.6), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 4, // Blur radius
                                            offset: Offset(0,
                                                2), // Offset in the x and y direction
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
                                  Icons.remove_red_eye_sharp,
                                  size: 28,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //TODO:FORGET PASSWORD TEXT
                      Padding(
                        padding: EdgeInsets.only(left: 200.0),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: const Color(0xffC0E862),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.normal),
                        ),
                      ),

                      //TODO:Container for Signin Button, LOGIN DIVIDER AND GOOGLE BUTTON
                      //TODO:SIGNIN BUTTON
                      Container(
                        height: mediaQuery.height * .25,
                        //  color: Colors.tealAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 312,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffC0E862)),
                                  foregroundColor: MaterialStateProperty.all(
                                      const Color(0xff030303)),
                                  side: MaterialStateProperty.all(
                                      BorderSide.none),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(45.0))),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Inter',
                                      color: Colors.black),
                                ),
                              ),
                            ),

                            //TODO:LOGIN DIVIDER
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.black12,
                                    indent: 50,
                                    endIndent: 5,
                                    // height: screenHeight * .09,
                                  ),
                                ),
                                Text(
                                  'or log in',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.normal),
                                ),
                                Expanded(
                                  child: Divider(
                                      thickness: 2,
                                      color: Colors.black12,
                                      indent: 5,
                                      endIndent: 50),
                                ),
                              ],
                            ),
                            //TODO:GOOGLE BUTTON

                            Container(
                              width: 312,
                              height: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45)),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: Color(
                                          0xffC0E862))), // Customize border color and width

                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(45.0))),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'images/google.png',
                                      height: 42,
                                      width: 42,
                                    ),
                                    Text(
                                      'Google',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //TODO: Container for Do not have Account
                      Container(
                        margin: EdgeInsets.only(top: mediaQuery.height * .02),
                        width: mediaQuery.width * 1,
                        height: mediaQuery.height * .07,
                        //  color: Colors.redAccent.withOpacity(.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //TODO: DO NOT HAVE ACCOUNT?
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 18, 18, 18),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                              ),
                            ),

                            //TODO:REGISTER
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()),
                                  );
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Color(0xffC5EB6D),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * .0003,
                      )
                    ],
                  ),
                ),
              );
            }
            //TODO: 2. ORIENTATION ELSE
            else {
              return Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //TODO:Container for Top Image

                      Container(
                        width: mediaQuery.width * 1,
                        height: mediaQuery.height * .55,
                        decoration: BoxDecoration(
                          //  color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage('images/background.png'),
                              fit: BoxFit.cover),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 40.0, left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Sign in to your Account',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                              Text(
                                'Welcome',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  color: Color(0xffffffff).withOpacity(.71),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //TODO:Container for TextFields
                      Container(
                        width: mediaQuery.width * 1,
                        height: mediaQuery.height * .5,
                        margin: EdgeInsets.only(top: 18),
                        // color: Colors.tealAccent.withOpacity(.6),
                        padding:
                            EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //TODO:TEXTFIELD1
                            TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50)),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 21, right: 25),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.6), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 4, // Blur radius
                                            offset: Offset(0,
                                                2), // Offset in the x and y direction
                                          ),
                                        ]),
                                    child: Icon(
                                      Icons.mail,
                                      size: 25,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            //TODO:TEXTFIELD2
                            TextField(
                              textAlign: TextAlign.start,
                              textAlignVertical: TextAlignVertical.center,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(50)),
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: 18,
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(left: 21, right: 25),
                                  child: Container(
                                    margin: EdgeInsets.symmetric(vertical: 10),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffffffff),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.6), // Shadow color
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 4, // Blur radius
                                            offset: Offset(0,
                                                2), // Offset in the x and y direction
                                          ),
                                        ]),
                                    child: Icon(
                                      Icons.lock,
                                      size: 25,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //TODO:FORGET PASSWORD TEXT
                      Padding(
                        padding: EdgeInsets.only(left: 500.0),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Color(0xffC0E862),
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.normal),
                        ),
                      ),

                      //TODO:Container for Signin Button, LOGIN DIVIDER AND GOOGLE BUTTON
                      //TODO:SIGNIN BUTTON
                      Container(
                        height: mediaQuery.height * .6,
                        //  color: Colors.tealAccent,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 412,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(45),
                              ),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      const Color(0xffC0E862)),
                                  foregroundColor: MaterialStateProperty.all(
                                      const Color(0xff030303)),
                                  side: MaterialStateProperty.all(
                                      BorderSide.none),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(45.0))),
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Inter',
                                      color: Colors.black),
                                ),
                              ),
                            ),

                            //TODO:LOGIN DIVIDER
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.black12,
                                    indent: 180,
                                    endIndent: 5,
                                    // height: screenHeight * .09,
                                  ),
                                ),
                                Text(
                                  'or log in',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.normal),
                                ),
                                Expanded(
                                  child: Divider(
                                      thickness: 2,
                                      color: Colors.black12,
                                      indent: 5,
                                      endIndent: 180),
                                ),
                              ],
                            ),
                            //TODO:GOOGLE BUTTON

                            Container(
                              width: 412,
                              height: 56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45)),
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  side: MaterialStateProperty.all(BorderSide(
                                      color: Color(
                                          0xffC0E862))), // Customize border color and width

                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(45.0))),
                                ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'images/google.png',
                                      height: 42,
                                      width: 42,
                                    ),
                                    Text(
                                      'Google',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Inter',
                                          fontWeight: FontWeight.normal,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //TODO: Container for Do not have Account
                      Container(
                        margin: EdgeInsets.only(top: mediaQuery.height * .02),
                        width: mediaQuery.width * 1,
                        height: mediaQuery.height * .07,
                        //  color: Colors.redAccent.withOpacity(.3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //TODO: DO NOT HAVE ACCOUNT?
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Color.fromARGB(255, 18, 18, 18),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                              ),
                            ),

                            //TODO:REGISTER
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Signup()),
                                  );
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Color(0xffC5EB6D),
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mediaQuery.height * .0003,
                      )
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
