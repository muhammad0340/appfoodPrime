import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app_ui/theme/style.dart';

class FormContainerWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  const FormContainerWidget({
    super.key,
    required this.hintText,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: lightGreyColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: controller,
        decoration:
            InputDecoration(hintText: hintText, border: InputBorder.none),
      ),
    );
  }
}
