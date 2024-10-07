import 'package:flutter/material.dart';
import 'package:navigasi/page_dua.dart';

class PageSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 1"), // Menyesuaikan dengan nama halaman
      ),
      body: Center(
        child: Text(
          "Ini Page 1", // Menyesuaikan dengan nama halaman
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return PageDua(); // Arahkan ke PageDua
              },
            ),
          );
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
