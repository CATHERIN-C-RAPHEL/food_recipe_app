import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/foodlistmodel.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 200,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                foodlist[index].imagename,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(foodlist[index].description),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    height: 200,
                    color: Colors.white,
                    child: Image.asset(
                      foodlist[index].image,
                      height: 130,
                    ),
                  ))
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
