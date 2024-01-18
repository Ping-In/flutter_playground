// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_app/pages/home_page.dart';
import 'package:test_app/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
        backgroundColor: Color.fromARGB(255, 6, 255, 14),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[200],
        child: Column(children: [
          DrawerHeader(
              child: Icon(
            Icons.favorite,
            size: 48,
          )),

          // Home Page List Tile
          ListTile(
            leading: Icon(Icons.home),
            title: Text("H O M E"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/homePage');
            },
          ),

          // Settings Page List Tile
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("S E T T I N G S"),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settingsPage');
            },
          ),
        ]),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text("Go To Second Page"),
        onPressed: () {
          Navigator.pushNamed(context, '/secondPage');
        },
      )),
    );
  }
}
