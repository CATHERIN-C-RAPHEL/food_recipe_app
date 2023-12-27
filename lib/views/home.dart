// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_recipe_app/widgets/appbar.dart';
import 'package:food_recipe_app/widgets/categories.dart';
import 'package:food_recipe_app/widgets/foodlist.dart';
import 'package:food_recipe_app/widgets/masters_choice.dart';
import 'package:food_recipe_app/widgets/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Search(),
          SizedBox(
            height: 10,
          ),
          Categories(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("You May Like",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 10,
          ),
          FoodList(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Master Chef's Choice",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MastersChoice(),
        ],
      ),
    );
  }
}
