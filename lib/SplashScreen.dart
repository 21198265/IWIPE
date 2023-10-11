import 'package:flutter/material.dart';
import 'widgets/MainAppBar.dart';
import 'widgets/MainBottomNavBar.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Loading'),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Please wait while we process your chosen ID',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ),
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
