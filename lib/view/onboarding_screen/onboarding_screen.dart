import 'package:flutter/material.dart';
import 'package:projuct002/utils/constnads/color_constands.dart';
import 'package:projuct002/utils/constnads/image_constands.dart';
import 'package:projuct002/view/bottom_navebar_screen/bottom_navebar_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildbackgroundimage(),
          _buildGradientSection(context),
          Positioned(
            top: 25,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                RichText(
                  text: TextSpan(
                      text: "60k+",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                      children: [
                        TextSpan(
                            text: "  Premium recipes",
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 16)),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Positioned _buildGradientSection(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      left: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 50),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Let’s Cooking",
                style: TextStyle(
                    fontSize: 63,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Find best recipes for cooking",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavbarScreen(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                      color: ColorConstands.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Start cooking",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _buildbackgroundimage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                ImageConstands.ONBOARDING_IMAGE_BG,
              ))),
    );
  }
}
