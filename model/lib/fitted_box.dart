import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fitted Box"),
        ),
        body: Center(
          child: Container(
            color: Colors.blue,
            // Jika ingin mengatur lebar dan tinggi, buka komentar di bawah
            // width: 300,
            // height: 110,
            child: FittedBox(
              alignment: Alignment.centerRight,
              child: Image.network(
                  "https://picsum.photos/500/500"), // URL yang benar
            ), // FittedBox
          ), // Container
        ), // Center
      ), // Scaffold
    ); // MaterialApp
  }
}
