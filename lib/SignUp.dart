import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'SignIn.dart';
import 'main.dart';



class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Color(0xffB8E28A),
        ),
        body: const MyStatefulWidget(),
      );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              child: const Text('<- Back', style: TextStyle(fontSize: 15)),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: const Text(
              'Create new Account',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Already Registered? Log in'),
              TextButton(
                child: const Text(
                  'here',
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/SignIn');
                },
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: const Text(
              'Name',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 40, 10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffFEEAF0),
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: const Text(
              'Email',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 40, 10),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffFEEAF0),
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: const Text(
              'Password',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 40, 40),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffFEEAF0),
                border: OutlineInputBorder(),
                labelText: '******',
              ),
            ),
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(30, 0, 40, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffF490A5),
              ),
              child: const Text('Sign Up'),
              onPressed: () async {
                try {
                  final UserCredential userCredential =
                  await _auth.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  final User? user = userCredential.user;
                  if (user != null) {
                    // User registration successful
                    print('Registration successful: ${user.uid}');
                    // Redirect to the home screen or perform any desired action
                    Navigator.pushNamed(context, '/id_screen');
                  }
                } catch (e) {
                  // Handle registration errors here
                  print('Error during registration: $e');
                }
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(50),
            child: const Text(
              'Iwipe',
              style: TextStyle(
                fontSize: 50,
                color: Color(0xff62995A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
