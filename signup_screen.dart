
import 'package:flutter/material.dart';
import 'package:sqlite_project/user.dart';

import 'database_helper.dart';
import 'login_screen.dart';
class SignupScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final DatabaseHelper dbHelper = DatabaseHelper.instance;

  void _signup(BuildContext context) async {
    final user = User(
      username: usernameController.text,
      email: emailController.text,
      password: passwordController.text,
    );
    await dbHelper.insertUser(user);
    Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: usernameController, decoration: InputDecoration(labelText: 'Username')),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Password'), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => _signup(context), child: Text('Signup')),
            TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())), child: Text('Login')),
          ],
        ),
      ),
    );
  }
}