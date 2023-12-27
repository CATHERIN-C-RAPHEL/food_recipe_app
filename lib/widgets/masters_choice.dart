import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/foodlistmodel.dart';
import 'package:food_recipe_app/models/mastersChoice.dart';
import 'package:food_recipe_app/views/secondPage.dart';

class MastersChoice extends StatelessWidget {
  const MastersChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: 2,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(6),
              child: InkWell(
                onTap: () {
                  Mastersfav mastersfav = Mastersfav(
                      image: mastersfavourite[index].image,
                      imagename: mastersfavourite[index].imagename,
                      subtitle: mastersfavourite[index].subtitle,
                      descrip: mastersfavourite[index].descrip,
                      name: mastersfavourite[index].name,
                      chefimg: mastersfavourite[index].chefimg,
                      recipe: mastersfavourite[index].recipe);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                          mastersfav: mastersfav,
                        ),
                      ));
                },
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(mastersfavourite[index].image),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          mastersfavourite[index].imagename,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          mastersfavourite[index].subtitle,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
