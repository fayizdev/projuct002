import 'package:flutter/material.dart';
import 'package:projuct002/view/bottom_navebar_screen/bottom_navebar_screen.dart';
import 'package:projuct002/view/create_recipe_screen/create_recipe_screen.dart';
import 'package:projuct002/view/home_screen/home_screen.dart';
import 'package:projuct002/view/onboarding_screen/onboarding_screen.dart';
import 'package:projuct002/view/profile_screen/profile_screen.dart';
import 'package:projuct002/view/recipe_details/recipe_details.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}
