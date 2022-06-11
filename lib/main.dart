import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jawaban UTS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Jawaban UTS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage('assets/images/profile.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 20,
            ),
            const Text(
              'Welcome Fazli Alfikri',
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 40, 8),
              child: const Text('Nama saya Fazli Alfikri, lahir di sungai ulu tanggal 02 bulan 11 tahun 2002. Saya biasa dipanggil fikri, saya tidak memiliki banyak hal yang saya suka, tetapi saya memiliki hobi bermain tenis meja, saya juga suka mai game tapi itu hanyalah sampingan saya ketika gabut. Saya juga suka tipikial orang yang menyukai hal-hal baru yang saya tidak ketahui. Contohnya adalah dengan mengambil jurusan teknik informatika yang mana saya benar-benar tidak memahaminya dan bahkan saya baru aktif menggunakan laptop/komputer semenjak menjadi mahasiswa aktif di STTI Tanjungpinang.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}