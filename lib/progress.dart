import 'package:flutter/material.dart';
import 'Templates/MainAppBar.dart';
import 'Templates/MainBottomNavBar.dart';


class progress extends StatelessWidget {
  const progress({Key? key}) : super(key: key);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Progress'),
      bottomNavigationBar: MainBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
          ],
        ),
      ),
    );
  }
}