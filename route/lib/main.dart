import 'package:flutter/material.dart';
import 'package:route/gallery_page.dart';
import 'package:route/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        '/homepage': (context) => HomePage(),
        '/gallery': (context) => GalleryPage()
      },
    );
  }
}
