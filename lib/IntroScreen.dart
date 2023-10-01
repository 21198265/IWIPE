import 'package:flutter/material.dart';
import 'package:iwipe/Templates/MainBottomNavBar.dart';
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
                    height: 520),
                //Image.asset('Assets/images/iWipe _woman.ai'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/SignIn');
                  },
                  child: const Text('Open Sign In Page'),
                ),
              ],
            ),
            MainBottomNavBar(),
            // Row(
            //     children: <Widget> [
            //       IconButton( // payment button
            //         iconSize: 35,
            //         icon: const Icon(Icons.wallet),
            //         onPressed: () {
            //           Navigator.pushNamed(context, '/paymentScreen');
            //         },
            //       ),
            //       IconButton( // progress button
            //         iconSize: 35,
            //         icon: const Icon(Icons.bar_chart),
            //         onPressed: () {
            //           Navigator.pushNamed(context, '/progressScreen');
            //         },
            //       ),
            //       IconButton( // home button
            //         iconSize: 35,
            //         icon: const Icon(Icons.my_location),
            //         onPressed: () {
            //           Navigator.pushNamed(context, '/homeScreen');
            //         },
            //       ),
            //       IconButton( // notification button
            //         iconSize: 35,
            //         icon: const Icon(Icons.notifications),
            //         onPressed: () {
            //           Navigator.pushNamed(context, '/NotificationScreen');
            //         },
            //       ),
            //       IconButton( // settings button
            //         iconSize: 35,
            //         icon: const Icon(Icons.settings),
            //         onPressed: () {
            //           Navigator.pushNamed(context, '/settingsScreen');
            //           // ...
            //         },
            //       ),
            //     ]
            // )
          ])),
    );
  }
}
