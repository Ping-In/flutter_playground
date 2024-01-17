// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ['Niels', 'Sharon', 'Mike', 'Conner'];

  var logger = Logger();

  void userTapped() {
    logger.i("User tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Ping-In"),
          backgroundColor: Color.fromARGB(255, 6, 255, 14),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            userTapped();
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.green,
            child: Center(child: Text("Tap me!")),
          ),
        ),

        // body: Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     // Big Box
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.green[400],
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.green[200],
        //     )
        //   ],
        // )

        // body: GridView.builder(
        //     itemCount: 64,
        //     gridDelegate:
        //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        //     itemBuilder: (context, index) => Container(
        //           color: Colors.green,
        //           margin: EdgeInsets.all(2),
        //         )),

        // body: ListView.builder(
        //   itemCount: names.length,
        //   itemBuilder: (context, index) => ListTile(title: Text(names[index])),
        // ),

        // body: ListView(
        //   children: [
        //     // 1st Box
        //     Container(
        //       height: 350,
        //       color: Colors.green,
        //     ),

        //     // 2st Box
        //     Container(
        //       height: 350,
        //       color: Colors.green[400],
        //     ),

        //     // 3rd Box
        //     Container(
        //       height: 350,
        //       color: Colors.green[200],
        //     ),
        //   ],
        // )

        // body: Column(
        //   children: [
        //     // 1st Box
        //     Expanded(
        //       child: Container(
        //         color: Colors.green,
        //       ),
        //     ),

        //     // 2st Box
        //     Expanded(
        //       flex: 2,
        //       child: Container(
        //         color: Colors.green[400],
        //       ),
        //     ),

        //     // 3rd Box
        //     Expanded(
        //       child: Container(
        //         color: Colors.green[200],
        //       ),
        //     )
        //   ],
        // )

        // body: Center(
        //   child: Container(
        //       height: 150,
        //       width: 150,
        //       decoration: BoxDecoration(
        //           color: Color.fromARGB(255, 62, 181, 54),
        //           borderRadius: BorderRadius.circular(20)),
        //       padding: EdgeInsets.all(50),
        //       child: Icon(
        //         Icons.map_outlined,
        //         size: 50,
        //       )
        //       // child: Text(
        //       //   "Ping-In",
        //       //   style: TextStyle(
        //       //       color: Colors.white,
        //       //       fontSize: 28,
        //       //       fontWeight: FontWeight.bold),
        //       // ),
        //       ),
        // ),
      ),
    );
  }
}
