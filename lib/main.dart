import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app_ui/screen/auth/login_screen.dart';
import 'package:flutter_food_delivery_app_ui/screen/auth/sing_up_screen.dart';
import 'package:flutter_food_delivery_app_ui/screen/main/main_screen.dart';
import 'package:flutter_food_delivery_app_ui/screen/onboarding/onboarding_screen.dart';
import 'package:flutter_food_delivery_app_ui/screen/primium/primium_screen.dart';
import 'package:flutter_food_delivery_app_ui/screen/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primarySwatch = MaterialColor(0xFFED6E1B, <int,Color>{
      50:Color(0xFFED6E1B),
      100:Color(0xFFED6E1B),
      200:Color(0xFFED6E1B),
      300:Color(0xFFED6E1B),
      400:Color(0xFFED6E1B),
      500:Color(0xFFED6E1B),
      600:Color(0xFFED6E1B),
      700:Color(0xFFED6E1B),
      800:Color(0xFFED6E1B),
      900:Color(0xFFED6E1B),
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Prime',
      theme: ThemeData(
       primarySwatch:primarySwatch,
        useMaterial3: true,
      ),
      home: SplashScreen(child: OnBoardingScreen(),),
    );
  }
}


