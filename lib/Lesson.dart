import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  const Lesson ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('***LESSON NAME***'),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.red,
            height: 100,


          )
        ],
      )
    );

  }
}

