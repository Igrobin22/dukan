import 'package:dukan/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'Screens/signup_screen.dart';

void main(){
  runApp(Main());
}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context)=> HomeScreen(),
      },
    );
  }
}
