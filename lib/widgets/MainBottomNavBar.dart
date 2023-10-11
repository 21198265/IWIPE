import 'package:flutter/material.dart';

class MainBottomNavBar extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return NavigationBar(



        destinations: const <Widget>[
         // NavigationDestination(icon: Icon(Icons.wallet), label: ""),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: ""),
          NavigationDestination(icon: Icon(Icons.my_location), label: ''),
        //  NavigationDestination(icon: Icon(Icons.notifications), label: ""),
          NavigationDestination(icon: Icon(Icons.settings), label: ""),


        ],

        //Probably a better way to associate destinations with indexes
        onDestinationSelected: (index)
      {
        // if(index == 0)
        //   {
        //     Navigator.pushNamed(context, '/PaymentInfo');
        //   }
        if (index == 0)
          {
            Navigator.pushNamed(context, '/progress');
          }
        else if (index == 1)
        {
          Navigator.pushNamed(context, '/HomeScreen');
        }
        // else if (index == 2)
        // {
        //   Navigator.pushNamed(context, '/Notifications');
        // }
        else if (index == 2)
        {
          Navigator.pushNamed(context, '/settings');
        }
      },

    );
  }
}












// class MainBottomNavBar extends StatefulWidget {
//   const MainBottomNavBar({super.key});
//
//   @override
//   State<MainBottomNavBar> createState() => _MainBottomNavBarState();
// }
//
// class _MainBottomNavBarState extends State<MainBottomNavBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: <Widget> [
//               IconButton( // payment button
//                 iconSize: 40,
//                 icon: const Icon(Icons.wallet),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/PaymentInfo');
//                 },
//               ),
//               IconButton( // progress button
//                 iconSize: 40,
//                 icon: const Icon(Icons.bar_chart),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/progress');
//                 },
//               ),
//               IconButton( // home button
//                 iconSize: 40,
//                 icon: const Icon(Icons.my_location),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/HomeScreen');
//                 },
//               ),
//               IconButton( // notification button
//                 iconSize: 40,
//                 icon: const Icon(Icons.notifications),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/notification');
//                 },
//               ),
//               IconButton( // settings button
//                 iconSize: 40,
//                 icon: const Icon(Icons.settings),
//                 onPressed: () {
//                   Navigator.pushNamed(context, '/settings');
//                   // ...
//                 },
//               ),
//             ]
//         );
//   }
// }







//To do
//Make it a stateless widget and inside the class define behaviour to change with context.
//Shape and presentation
//Make pages corresponding to navigation.