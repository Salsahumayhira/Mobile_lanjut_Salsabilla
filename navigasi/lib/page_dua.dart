import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 2"), // Sesuaikan judul dengan nama halaman
      ),
      body: Center(
        child: Text(
          "Ini Page 2", // Sesuaikan teks dengan nama halaman
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
        },
        child: Icon(
            Icons.keyboard_arrow_left), // Ikon kembali ke halaman sebelumnya
      ),
    );
  }
}
