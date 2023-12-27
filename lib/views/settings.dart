import 'package:flutter/material.dart';
import 'package:food_recipe_app/widgets/appbar.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar,
        body: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/user.jpeg'),
                      child: Stack(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white70,
                            child: Icon(Icons.add_a_photo_rounded),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Full Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email ID',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Gender',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
