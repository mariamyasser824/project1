import 'package:booklyapp/featuers/home/presenation/views/screen_2.dart';
import 'package:booklyapp/featuers/home/presenation/views/screen_3.dart';

import 'package:booklyapp/featuers/splashscreen/views/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: child,
            routes: {
              "screen2": (context) => const screen_2(),
              "screen3": (context) => screen3(),
            });
      },
      child: const splash_screen(),
    );
  }
}
