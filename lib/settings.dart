import 'package:flutter/material.dart';
import 'widgets/MainBottomNavBar.dart';
import 'widgets/MainAppBar.dart';




class settings extends StatelessWidget {
  const settings({Key? key}) : super(key: key);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Settings'),
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