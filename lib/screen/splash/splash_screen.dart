import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app_ui/screen/main/main_screen.dart';
import 'package:flutter_food_delivery_app_ui/theme/style.dart';

class SplashScreen extends StatefulWidget {
  final Widget child;
  const SplashScreen({super.key,required this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1500)).then((value) {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => widget.child), (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColorED6E1B,
      body: Center(
        child: Image.asset("assets/app_logo.png"),
      ),
    );
  }
}
