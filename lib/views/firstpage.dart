import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/foodlistmodel.dart';
import 'package:food_recipe_app/widgets/appbar.dart';

class FirstPage extends StatelessWidget {
  final FoodList_model foodList_model;

  const FirstPage({super.key, required this.foodList_model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(foodList_model.image),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    foodList_model.imagename,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Recipe by",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(0, 116, 102, 102),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(foodList_model.chefimage),
                  radius: 30,
                ),
                title: Text(
                  foodList_model.chefname,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
                subtitle: Text(
                  "cook",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message,
                      color: Colors.red,
                    )),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                softWrap: true,
                foodList_model.description,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ingrediants",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 7,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(foodList_model.ingredients[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
