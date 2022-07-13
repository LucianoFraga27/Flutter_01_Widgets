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
      home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: Container(
          color: Colors.white,
          child: Center(
            child: Text('Hello world',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red
            )),
          ),
      ),
    );
  }
}
