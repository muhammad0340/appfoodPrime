import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app_ui/screen/auth/sing_up_screen.dart';
import 'package:flutter_food_delivery_app_ui/screen/primium/primium_screen.dart';
import 'package:flutter_food_delivery_app_ui/theme/style.dart';
import 'package:flutter_food_delivery_app_ui/widget/button_container_widget.dart';
import 'package:flutter_food_delivery_app_ui/widget/form_container_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMeCheckValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 140),
                  Text(
                    "Log In",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormContainerWidget(hintText: "Email or Username"),
                  SizedBox(
                    height: 20,
                  ),
                  FormContainerWidget(hintText: "Password"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMeCheckValue,
                            onChanged: (value) {
                              setState(() {
                                _rememberMeCheckValue = value!;
                              });
                            },
                          ),
                          Text(
                            "Remember Me",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: primaryColorED6E1B,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonContainerWidget(
                    title: "Log In",
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PremiumScreen()),
                          (route) => false);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text("or"),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _optionSingIn(
                          iconData: FontAwesomeIcons.google, color: redColor),
                      _optionSingIn(
                          iconData: FontAwesomeIcons.facebook,
                          color: Colors.blue[900]!),
                      _optionSingIn(
                          iconData: FontAwesomeIcons.linkedin,
                          color: Colors.blue[600]!),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "don't have an account?",
                  style: TextStyle(fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SingUpScreen()),
                        (route) => false);
                  },
                  child: Text(
                    "Create account",
                    style: TextStyle(fontSize: 15, color: primaryColorED6E1B),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _optionSingIn({required IconData iconData, required Color color}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Icon(
          iconData,
          color: whiteColor,
        ),
      ),
    );
  }
}
