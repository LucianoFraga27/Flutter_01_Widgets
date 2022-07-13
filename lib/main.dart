import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter")
        ),
        body: Container(
          color: Colors.white
      ),
        drawer: Container(
          color: Colors.red
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      ),
    );
  }
}
