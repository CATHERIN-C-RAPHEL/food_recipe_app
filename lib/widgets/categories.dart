import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 40,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("All"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 203, 135, 131),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Italian"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 174, 90, 84),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Chinese"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 174, 90, 84),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Veg"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 174, 90, 84),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Drinks"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 174, 90, 84),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Container(
              padding: EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Sweets"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 174, 90, 84),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
