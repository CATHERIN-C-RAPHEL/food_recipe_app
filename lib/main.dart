import 'package:flutter/material.dart';
import 'package:food_recipe_app/views/bottom.dart';
import 'package:food_recipe_app/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodList',
      debugShowCheckedModeBanner: false,
      home: Bottom_page(),
    );
  }
}
