import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'main.dart';
import 'SignUp.dart';
import 'HomeScreen.dart';
import 'widgets/MainAppBar.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);
  static const String _title = 'IWipe';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: MainAppBar(title: 'Sign In'),
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
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Does not have an account'),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 15),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/SignUp');
                },
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: const Text(
              'Email', // Change 'Name' to 'Email'
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(30, 0, 40, 10),
            child: TextField(
              controller: nameController, // Rename this to emailController
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffFEEAF0),
                border: OutlineInputBorder(),
                labelText: 'Email', // Change 'User Name' to 'Email'
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
              child: const Text('Login'),
              onPressed: () async {
                try {
                  final UserCredential userCredential =
                  await _auth.signInWithEmailAndPassword(
                    email: nameController.text, // Use emailController.text
                    password: passwordController.text,
                  );
                  final User? user = userCredential.user;
                  if (user != null) {
                    // Login successful
                    print('Login successful: ${user.uid}');
                    // Redirect to the home screen or perform any desired action
                    Navigator.pushReplacementNamed(context, 'HomeScreen');
                  }
                } catch (e) {
                  // Handle login errors here
                  print('Error during login: $e');
                }
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Sign in to continue',
              style: TextStyle(fontSize: 15),
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
