import 'package:flutter/material.dart';
import 'Templates/MainAppBar.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'Introduction'),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/SignIn');
              },
              child: const Text('Open Sign In Page'),
            ),
          ],
        ),
      ),
    );
  }
}