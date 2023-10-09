import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app_ui/screen/auth/login_screen.dart';
import 'package:flutter_food_delivery_app_ui/screen/primium/primium_screen.dart';
import 'package:flutter_food_delivery_app_ui/theme/style.dart';
import 'package:flutter_food_delivery_app_ui/widget/button_container_widget.dart';
import 'package:flutter_food_delivery_app_ui/widget/form_container_widget.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
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
                  SizedBox(
                    height: 140,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FormContainerWidget(hintText: "username"),
                  SizedBox(
                    height: 20,
                  ),
                  FormContainerWidget(hintText: "email"),
                  SizedBox(
                    height: 20,
                  ),
                  FormContainerWidget(hintText: "password"),
                  SizedBox(
                    height: 20,
                  ),
                  FormContainerWidget(hintText: "phone no"),
                  SizedBox(
                    height: 20,
                  ),
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
                      Expanded(
                        child: RichText(
                          maxLines: 2,
                          text: TextSpan(
                              text: "By signing in you accept the ",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: "Team of service ",
                                  style: TextStyle(
                                    color: primaryColorED6E1B,
                                  ),
                                ),
                                TextSpan(
                                  text: " and ",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: "privacy policey",
                                  style: TextStyle(
                                    color: primaryColorED6E1B,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonContainerWidget(
                    title: "Sign Up",
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => PremiumScreen()),
                          (route) => false);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",style: TextStyle(fontSize: 15),),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginScreen()), (route) => false);
                  },
                  child: Text("Log In",style: TextStyle(fontSize: 15,color: primaryColorED6E1B,),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
