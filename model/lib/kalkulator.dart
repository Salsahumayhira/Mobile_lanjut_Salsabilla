import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator Sederhana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Kalkulator(),
    );
  }
}

class Kalkulator extends StatefulWidget {
  @override
  _KalkulatorState createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  // Controller untuk input angka
  final TextEditingController angka1Controller = TextEditingController();
  final TextEditingController angka2Controller = TextEditingController();

  double? hasil; // Menyimpan hasil perhitungan

  // Fungsi operasi perhitungan
  void tambah() {
    setState(() {
      double angka1 = double.parse(angka1Controller.text);
      double angka2 = double.parse(angka2Controller.text);
      hasil = angka1 + angka2;
    });
  }

  void kurang() {
    setState(() {
      double angka1 = double.parse(angka1Controller.text);
      double angka2 = double.parse(angka2Controller.text);
      hasil = angka1 - angka2;
    });
  }

  void kali() {
    setState(() {
      double angka1 = double.parse(angka1Controller.text);
      double angka2 = double.parse(angka2Controller.text);
      hasil = angka1 * angka2;
    });
  }

  void bagi() {
    setState(() {
      double angka1 = double.parse(angka1Controller.text);
      double angka2 = double.parse(angka2Controller.text);
      hasil = angka1 / angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Sederhana'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Input Angka 1
            TextField(
              controller: angka1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Angka Pertama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Input Angka 2
            TextField(
              controller: angka2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Angka Kedua',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Tombol Operasi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: tambah,
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: kurang,
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: kali,
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: bagi,
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Tampilan Hasil
            Text(
              hasil == null ? 'Hasil: ' : 'Hasil: $hasil',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
