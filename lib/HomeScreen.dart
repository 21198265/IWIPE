import 'package:flutter/material.dart';
import 'widgets/MainAppBar.dart';
import 'widgets/MainBottomNavBar.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: "Home",
      ),
      bottomNavigationBar: MainBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              children:[
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/BathRoom');
                  },
                  child: const Text('Bathroom'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/LoungeRoom');
                  },
                  child: const Text('Lounge Room'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Kitchen');
                  },
                  child: const Text('Kitchen'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Chemicals');
                  },
                  child: const Text('Chemicals'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/CertTestPage');
                  },
                  child: const Text('Final Certification Test'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
