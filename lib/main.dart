import 'package:dukan/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (context,child){
      return GetMaterialApp(
        home: const HomeScreen(),
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.white,

        ),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
