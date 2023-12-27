import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/mastersChoice.dart';
import 'package:food_recipe_app/widgets/appbar.dart';
import 'package:food_recipe_app/widgets/masters_choice.dart';

class SecondPage extends StatelessWidget {
  final Mastersfav mastersfav;

  const SecondPage({super.key, required this.mastersfav});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(mastersfav.image),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    mastersfav.imagename,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
                  backgroundImage: AssetImage(mastersfav.chefimg),
                  radius: 30,
                ),
                title: Text(
                  mastersfav.name,
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
                mastersfav.descrip,
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
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    mastersfav.recipe[index],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
