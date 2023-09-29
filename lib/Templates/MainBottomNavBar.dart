

import 'package:flutter/material.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children:[
        //HERE IS WHERE THE BUTTONS GO
      ]
    );
  }
}







//To do
//Make it a stateless widget and inside the class define behaviour to change with context.
//Shape and presentation
//Make pages corresponding to navigation.