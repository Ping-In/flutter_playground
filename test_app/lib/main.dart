// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Ping-In"),
          backgroundColor: Color.fromARGB(255, 62, 181, 54),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          ],
        ),
        body: Center(
          child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 62, 181, 54),
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(50),
              child: Icon(
                Icons.map_outlined,
                size: 50,
              )
              // child: Text(
              //   "Ping-In",
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 28,
              //       fontWeight: FontWeight.bold),
              // ),
              ),
        ),
      ),
    );
  }
}
