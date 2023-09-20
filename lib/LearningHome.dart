import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LearningHome extends StatelessWidget {
  const LearningHome({Key? key}) : super(key: key);

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
            Column(
              children: [
                const Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
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
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'To see more, please click a button',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                Image.asset('Assets/images/iWipe _man_without desk.ai'),
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
                FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Lesson');
                  },
                  child: const Text('**TEST LESSONS**'),
                ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
