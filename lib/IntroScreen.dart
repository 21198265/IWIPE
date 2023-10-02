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
          child: Column(children: <Widget>[
            Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/language');
                  },
                  child: const Text('change language'),
                ),
                Container(
                    child: Image.asset(
                        'assets/images/No_background_PNG/iWipe-_woman_3.png'),
                    height: 100),
                //Image.asset('Assets/images/iWipe _woman.ai'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignIn');
                  },
                  child: const Text('Open Sign In Page'),
                ),
              ],
            ),
          ])),
    );
  }
}
