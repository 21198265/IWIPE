import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('iWIPE'),
        backgroundColor:Colors.white,
        elevation: 0,
      ),
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