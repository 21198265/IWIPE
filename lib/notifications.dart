import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'widgets/MainBottomNavBar.dart';




class notifications extends StatelessWidget {
  const notifications({Key? key}) : super(key: key);

  get image => null;

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
            MainBottomNavBar(),
            // Row(
            //   children: [
            //     IconButton( // payment button
            //       iconSize: 72,
            //       icon: const Icon(Icons.wallet),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/paymentScreen');
            //       },
            //     ),
            //     IconButton( // progress button
            //       iconSize: 72,
            //       icon: const Icon(Icons.bar_chart),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/progressScreen');
            //       },
            //     ),
            //     IconButton( // home button
            //       iconSize: 72,
            //       icon: const Icon(Icons.my_location),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/homeScreen');
            //       },
            //     ),
            //     IconButton( // notification button
            //       iconSize: 72,
            //       icon: const Icon(Icons.notifications),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/NotificationScreen');
            //       },
            //     ),
            //     IconButton( // settings button
            //       iconSize: 72,
            //       icon: const Icon(Icons.settings),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/settingsScreen');
            //         // ...
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}