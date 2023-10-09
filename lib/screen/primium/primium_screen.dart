import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app_ui/screen/main/main_screen.dart';
import 'package:flutter_food_delivery_app_ui/theme/style.dart';
import 'package:flutter_food_delivery_app_ui/widget/button_container_widget.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset("assets/word_app_logo.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "The best of your\nneighbourhood,\ndeliverred for less.",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _singlePremiumItemWidget(
              title: "save an average of \$4 to 5 per order",
              icon: Icon(
                Icons.food_bank,
                color: primaryColorED6E1B,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _singlePremiumItemWidget(
              title: "Look for foodPrime logo to find\n1k eligible restaurants",
              icon: Icon(
                Icons.restaurant,
                color: primaryColorED6E1B,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _singlePremiumItemWidget(
                title:
                    "Enjoy zero delivery fees and reduce\nservice fees on order \$12",
                icon: Icon(
                  Icons.shopping_cart,
                  color: primaryColorED6E1B,
                  size: 30,
                )),
            SizedBox(
              height: 20,
            ),
            _singlePremiumItemWidget(
                title:
                    "Free 1 month trail, \$9.99 monthly\nafter, easily cancel anything",
                icon: Icon(Icons.calendar_today,
                    color: primaryColorED6E1B, size: 30)),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
            SizedBox(
              height: 30,
            ),
            ButtonContainerWidget(title: "Try FoodPrime free for 1 month"),
            SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                      (route) => false);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "By tapping the button, I agree to the ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Term ",style: TextStyle(color: primaryColorED6E1B),
                  ),
                  TextSpan(
                    text: "and an automatic monthly charge of\$9.99 until I",style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: " cancle. ",style: TextStyle(color: primaryColorED6E1B),
                  ),
                  TextSpan(
                    text: "Cancle an account prior to any renewal to avoid charge",style: TextStyle(color: Colors.black)
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _singlePremiumItemWidget({
    Widget? icon,
    String? title,
  }) {
    return Row(
      children: [
        icon!,
        SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: TextStyle(
            fontSize: 17,
          ),
        )
      ],
    );
  }
}
