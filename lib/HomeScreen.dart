import 'package:flutter/material.dart';
import 'package:iwipe/Templates/MainAppBar.dart';
import 'package:iwipe/Templates/MainBottomNavBar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: "Home",
      ),
      bottomNavigationBar: MainBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [],
        ),
      ),
    );
  }
}
