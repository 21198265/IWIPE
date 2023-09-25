

import 'package:flutter/material.dart';

class MainBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home)

          )
        ],
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
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



//To do
//Make it a stateless widget and inside the class define behaviour to change with context.
//Shape and presentation
//Make pages corresponding to navigation.