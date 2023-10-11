import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'main.dart';
import 'SignIn.dart';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeScreen',

      // initialRoute: '/', // Specify the initial route
      // routes: {
      //  // '/home': (context) => const HomeScreen(),
      //   '/LearningHome': (context) => const LearningHome(),
      //   '/Paymentinfo': (context) => const PaymentInfo(),
      //    '/Settings': (context) => const settings(),
      //    '/progress': (context) => const progress(),
      //    '/notifications': (context) => const notifications(),
      // },
    );
  }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Living room'),
        backgroundColor: Color(0xffB8E28A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              children: [
                IconButton( // payment button
                  iconSize: 72,
                  icon: const Icon(Icons.wallet),
                  onPressed: () {
                    Navigator.pushNamed(context, '/paymentScreen');
                  },
                ),
                IconButton( // progress button
                  iconSize: 72,
                  icon: const Icon(Icons.bar_chart),
                  onPressed: () {
                    Navigator.pushNamed(context, '/progressScreen');
                  },
                ),
                IconButton( // home button
                  iconSize: 72,
                  icon: const Icon(Icons.my_location),
                  onPressed: () {
                    Navigator.pushNamed(context, '/homeScreen');
                  },
                ),
                IconButton( // notification button
                  iconSize: 72,
                  icon: const Icon(Icons.notifications),
                  onPressed: () {
                    Navigator.pushNamed(context, '/NotificationScreen');
                  },
                ),
                IconButton( // settings button
                  iconSize: 72,
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.pushNamed(context, '/settingsScreen');
                    // ...
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
