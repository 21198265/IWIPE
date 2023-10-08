import 'package:flutter/material.dart';
import 'package:iwipe/Templates/MainAppBar.dart';
import 'package:iwipe/Templates/MainBottomNavBar.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Loading'),
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset(
              'assets/images/iwipe_woman3.png',
              fit: BoxFit.cover,
              height: 550,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/homeScreen');
            },
            child: const Text('Begin your Training'),
          ),
        ],
      ),
    );
  }
}
