import 'package:flutter/material.dart';
import 'widgets/MainAppBar.dart';
import 'widgets/MainBottomNavBar.dart';
import 'package:percent_indicator/percent_indicator.dart';


// void main() async {
//   //runApp(DevicePreview(
//   // enabled: true,
//   //builder: (context) => const MyApp(),
//   //));
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   static const String _title = 'IWipe';
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//
//       initialRoute: '/', // Specify the initial route
//
//     );
//   }
// }
class LearningHome extends StatelessWidget {
  const LearningHome({Key? key}) : super(key: key);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: 'home'),
      bottomNavigationBar: MainBottomNavBar(),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                    child: Image.asset(
                      'assets/images/LoungeRoom.jpg',
                      fit: BoxFit.cover,
                      height: 300,
                      width: 400,
                    ),
                ),
                Align(
                  alignment: Alignment(0, .2),
                  child: FloatingActionButton(
                    onPressed: () async {
                    },
                  ),
                ),
                Align(
                  alignment: Alignment(0, .3),
                  child: FloatingActionButton(
                    onPressed: () async {

                    },
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Cleaning 1:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Cleaning 2:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.green,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Cleaning 3:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ),
                LinearPercentIndicator(
                  width: 140.0,
                  lineHeight: 14.0,
                  percent: 0.5,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.green,
                ),
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Lesson');
                  },
                  child: const Text('**TEST LESSONS**'),
                ),
              ],
            ),
            Row(
              children:[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'To see more, please click a button',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),

                Container(
                  child: Image.asset(
                    'assets/images/Man/Left/Man2_transparent.png',
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),
              ]
            )

            // Row(
            //   children: [
            //     IconButton( // payment button
            //       iconSize: 35,
            //       icon: const Icon(Icons.wallet),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/paymentScreen');
            //       },
            //     ),
            //     IconButton( // progress button
            //       iconSize: 35,
            //       icon: const Icon(Icons.bar_chart),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/progressScreen');
            //       },
            //     ),
            //     IconButton( // home button
            //       iconSize: 35,
            //       icon: const Icon(Icons.my_location),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/homeScreen');
            //       },
            //     ),
            //     IconButton( // notification button
            //       iconSize: 35,
            //       icon: const Icon(Icons.notifications),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/NotificationScreen');
            //       },
            //     ),
            //     IconButton( // settings button
            //       iconSize: 35,
            //       icon: const Icon(Icons.settings),
            //       onPressed: () {
            //         Navigator.pushNamed(context, '/settingsScreen');
            //         // ...
            //       },
            //     ),
            //   ]
            // )
          ],
        ),
      ),
    );
  }
}
