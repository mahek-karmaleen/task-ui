// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightBlue,
      body: SafeArea(
        child: Column(
          children: [
            Icon(
              Icons.arrow_circle_left,
              size: 50,
              color: Colors.white,
            ),
            Center(
              child: Icon(
                Icons.image,
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    "Come In Office",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text('Username'),
                  TextFormField(),
                  Text('Password'),
                  TextFormField(),
                  Text("Forget Password?"),
                  ElevatedButton(onPressed: () {}, child: Text("Login")),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
