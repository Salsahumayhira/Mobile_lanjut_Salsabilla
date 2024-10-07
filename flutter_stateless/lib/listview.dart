import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("My App"),
          ),
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                width: 300,
                height: 300,
                color: Colors.yellow,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.red,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.black,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
            ],
          )),
    );
  }
}
