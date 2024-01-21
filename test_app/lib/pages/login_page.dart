// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_app/components/button.dart';
import 'package:test_app/components/text_field.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  // Login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Image pingin
            Image.asset("images/pingin.png", fit: BoxFit.cover),
            const SizedBox(height: 50),
            Text(
              "Welcome to Ping-In!",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 50),

            // email text
            MyTextField(
              hintText: "Email",
              obscureText: true,
              controller: _emailController,
            ),
            const SizedBox(height: 25),

            // pw text
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: _passwordController,
            ),
            const SizedBox(height: 25),

            // Login Button
            MyButton(
              text: "Login",
              onTap: login,
            ),
            const SizedBox(height: 25),

            // Register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New to Ping-In? "),
                Text(
                  "Register now",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
