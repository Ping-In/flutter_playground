// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2st Page!"),
        backgroundColor: Color.fromARGB(255, 6, 255, 14),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Go To First Page"),
        onPressed: () {
          Navigator.pushNamed(context, '/firstPage');
        },
      )),
    );
  }
}
