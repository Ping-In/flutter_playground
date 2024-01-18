// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Color.fromARGB(255, 6, 255, 14),
        centerTitle: true,
      ),
    );
  }
}
