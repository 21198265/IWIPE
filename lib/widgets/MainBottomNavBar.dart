import 'package:flutter/material.dart';

class MainBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 50,
      color: Color(0xffffffff),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/progress');
            },
            icon: Icon(Icons.bar_chart),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/HomeScreen');
              },
              icon: Icon(Icons.my_location)),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}

// class MainBottomNavBar extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return NavigationBar(
//       selectedIndex: 0,
//
//       backgroundColor: Color(0xffd9d9d9),
//       indicatorColor: Color(0xffd9d9d9),
//
//       destinations: const <Widget>[
//
//         NavigationDestination(icon: Icon(Icons.bar_chart), label: ""),
//         NavigationDestination(icon: Icon(Icons.my_location), label: ''),
//
//         NavigationDestination(icon: Icon(Icons.settings), label: ""),
//
//
//       ],
//
//
//       onDestinationSelected: (index) {
//
//         if (index == 0) {
//           Navigator.pushNamed(context, '/progress');
//         } else if (index == 1) {
//           Navigator.pushNamed(context, '/HomeScreen');
//         }
//         else if (index == 2) {
//           Navigator.pushNamed(context, '/settings');
//         }
//       },
//     );
//   }
// }
