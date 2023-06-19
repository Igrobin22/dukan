import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Stack(children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'images/random.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 50.0),
                          child: Text(
                            'Sign up to your account',
                            style: TextStyle(
                                fontSize: 50.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, top: 10.0),
                          child: Text(
                            'Register your account',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0)),
                      hintText: 'Username',
                      hintStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0)),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0)),
                      hintText: 'Date of birth',
                      hintStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                      ),
                      filled: true,
                      fillColor: Color(0xff0E0E0E).withOpacity(0.03),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30.0)),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.black54),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Color(0xffC0E862)),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
