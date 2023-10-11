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
          children: [
            Column(
              children:[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/BathRoom');
                  },
                  child: const Text('Bathroom'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LearningHome');
                  },
                  child: const Text('Lounge Room'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Kitchen');
                  },
                  child: const Text('Kitchen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Chemicals');
                  },
                  child: const Text('Chemicals'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
