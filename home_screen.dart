import 'package:flutter/material.dart';
import 'package:sqlite_project/user.dart';

class HomeScreen extends StatelessWidget {
  final User user;
  HomeScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Text('Welcome, ${user.username}!'),
      ),
    );
  }
}