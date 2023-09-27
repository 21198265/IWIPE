

import 'package:flutter/material.dart';

class MainBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.my_location)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications)
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings)
          ),
        ]
    );
  }
}



//To do
//Make it a stateless widget and inside the class define behaviour to change with context.
//Shape and presentation
//Make pages corresponding to navigation.