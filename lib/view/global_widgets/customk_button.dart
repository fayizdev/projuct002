import 'package:flutter/material.dart';

import '../../utils/constnads/color_constands.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.onButtonPressed,
    required this.text,
    super.key,
  });
  final void Function()? onButtonPressed;

  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConstands.primaryColor),
        child: Text(
          text,
          style: TextStyle(
              color: ColorConstands.mainWhite,
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
