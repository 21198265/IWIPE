import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  MainAppBar({required this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {

    return  AppBar(


          title: Text(title),
          backgroundColor: Color(0xffB8E28A),

        );



  }
}


//To do
//Make Title change with context (is there some way to access the navigation data?)
//Reshape the app bar