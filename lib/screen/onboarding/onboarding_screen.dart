import "package:flutter/material.dart";
import "package:flutter_food_delivery_app_ui/screen/auth/login_screen.dart";
import "package:flutter_food_delivery_app_ui/screen/onboarding/onboarding_entity.dart";
import "package:flutter_food_delivery_app_ui/theme/style.dart";
import "package:flutter_food_delivery_app_ui/widget/button_container_widget.dart";

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<OnBoardingEntity> onBordingData = OnBoardingEntity.onBoardData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: onBordingData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 70),
              child: Column(
                children: [
                  Image.asset("assets/word_app_logo.png"),
                  SizedBox(
                    height: 130,
                  ),
                  Image.asset("assets/${onBordingData[index].image}"),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "${onBordingData[index].title}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "${onBordingData[index].description}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color:
                                index == 0 ? primaryColorED6E1B : Colors.grey,
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color:
                                index == 1 ? primaryColorED6E1B : Colors.grey,
                            shape: BoxShape.circle),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color:
                                index == 2 ? primaryColorED6E1B : Colors.grey,
                            shape: BoxShape.circle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  index == 2
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: ButtonContainerWidget(
                              title: "Get started",
                              hasIcon: true,
                              icon: Icons.arrow_forward_ios,
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()),
                                    (route) => false);
                              }),
                        )
                      : Container(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
