import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/foodlistmodel.dart';
import 'package:food_recipe_app/views/firstpage.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      child: GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Card(
                    color: Colors.white,
                    elevation: 0.6,
                    shape: BeveledRectangleBorder(),
                    child: InkWell(
                      onTap: () {
                        FoodList_model foodList_model = FoodList_model(
                            imagename: foodlist[index].imagename,
                            image: foodlist[index].image,
                            subtitle: foodlist[index].subtitle,
                            description: foodlist[index].description,
                            chefimage: foodlist[index].chefimage,
                            chefname: foodlist[index].chefname,
                            ingredients: foodlist[index].ingredients);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FirstPage(
                                      foodList_model: foodList_model,
                                    )));
                      },
                      child: Column(
                        children: [
                          SizedBox(
                            height: 1,
                          ),
                          Image.asset(
                            foodlist[index].image,
                            height: 120,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            foodlist[index].imagename,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            foodlist[index].subtitle,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
