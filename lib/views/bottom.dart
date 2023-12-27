// import 'package:flutter/material.dart';
// import 'package:food_recipe_app/views/favourite.dart';
// import 'package:food_recipe_app/views/home.dart';
// import 'package:food_recipe_app/views/settings.dart';

// class BottomPage extends StatefulWidget {
//   BottomPage({super.key});

//   @override
//   State<BottomPage> createState() => _BottomPageState();
//   int _currentState = 0;

//   final _pages = [
//     HomePage(),
//     FavouritePage(),
//     SettingPage()

//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentState],
//        bottomNavigationBar: BottomNavigationBar(selectedItemColor: Colors.green,unselectedItemColor: Colors.black,
//     currentIndex: _currentState,
//     onTap: (newIndex){
//       setState((){
//          _currentState =newIndex;
//       });
//     }
//       // setState(() {
//       //   _currentState = newIndex;
//       // });

//     ,
//     items: const [
//       BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'Home'),
//       BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
//       BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Favorite'),
//       BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account')
//     ],
//        ),
//     );
//   }

//   void setState(Null Function() param0) {}

//   _BottomPageState() {}
// }

import 'package:flutter/material.dart';
import 'package:food_recipe_app/views/favourite.dart';
import 'package:food_recipe_app/views/home.dart';
import 'package:food_recipe_app/views/settings.dart';

class Bottom_page extends StatefulWidget {
  Bottom_page({super.key});

  @override
  State<Bottom_page> createState() => _Bottom_pageState();
}

class _Bottom_pageState extends State<Bottom_page> {
  int _currentState = 0;

  final _list = [
    HomePage(),
    FavouritePage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currentState],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        currentIndex: _currentState,
        onTap: (newIndex) {
          setState(() {
            _currentState = newIndex;
          });
        }, 
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
