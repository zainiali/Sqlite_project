
// main.dart
import 'package:flutter/material.dart';
import 'package:sqlite_project/signup_screen.dart';
import 'database_helper.dart';
import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupScreen(),
    );
  }
}






