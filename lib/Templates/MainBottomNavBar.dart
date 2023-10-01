
import 'package:iwipe/main.dart';
import 'package:flutter/material.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget> [
              IconButton( // payment button
                iconSize: 40,
                icon: const Icon(Icons.wallet),
                onPressed: () {
                  Navigator.pushNamed(context, '/PaymentInfo');
                },
              ),
              IconButton( // progress button
                iconSize: 40,
                icon: const Icon(Icons.bar_chart),
                onPressed: () {
                  Navigator.pushNamed(context, '/progress');
                },
              ),
              IconButton( // home button
                iconSize: 40,
                icon: const Icon(Icons.my_location),
                onPressed: () {
                  Navigator.pushNamed(context, '/HomeScreen');
                },
              ),
              IconButton( // notification button
                iconSize: 40,
                icon: const Icon(Icons.notifications),
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                },
              ),
              IconButton( // settings button
                iconSize: 40,
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                  // ...
                },
              ),
            ]
        );
  }
}







//To do
//Make it a stateless widget and inside the class define behaviour to change with context.
//Shape and presentation
//Make pages corresponding to navigation.