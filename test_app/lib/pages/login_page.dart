// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/components/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("images/pingin.png", fit: BoxFit.cover),
            const SizedBox(height: 50),
            Text(
              "Welcome to Ping-In!!",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 50),
            MyTextField(
              hintText: "Email",
              obscureText: true,
            ),
            const SizedBox(height: 25),
            MyTextField(
              hintText: "Password",
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
