import 'package:flutter/material.dart';
import 'widgets/MainBottomNavBar.dart';
import 'widgets/MainAppBar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'PaymentInfo.dart';
import 'main.dart';
import 'package:iwipe/notifications.dart';
import 'package:iwipe/progress.dart';




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
            Column(
              children:[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: const Text('Language'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignIn');
                  },
                  child: const Text('Log out'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignIn');
                  },
                  child: const Text('audio'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}