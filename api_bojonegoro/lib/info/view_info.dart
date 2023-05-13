import 'package:flutter/material.dart';

class InfoView extends StatefulWidget {
  const InfoView({super.key});

  @override
  _InfoViewState createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tentang Aplikasi',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Josefin Sans'),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              "Kabupaten Bojonegoro With API",
              style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Josefin Sans'),
            ),
            SizedBox(height: 20.0),
            Text(
              "Aplikasi ini menampilkan beberapa detail dari Kabupaten Bojonegoro, Jawa Timur.",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
            SizedBox(height: 50.0),
            Text(
              "Teknologi yang digunakan : ",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Josefin Sans'),
            ),
            SizedBox(height: 10.0),
            Text(
              "• Flutter",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
            Text(
              "• Dart",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
            Text(
              "• Node JS",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
            Text(
              "• Express JS",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
            Text(
              "• CORS",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
            Text(
              "• PostgreSQL",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
            SizedBox(height: 50.0),
            Text(
              "Tujuan",
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Josefin Sans'),
            ),
            SizedBox(height: 10.0),
            Text(
              "Menyelesaikan Tugas Client Server Part 2 - Matakuliah Workshop Pemrograman Perangkat Bergerak akan berakhir.",
              style: TextStyle(fontSize: 18.0, fontFamily: 'Josefin Sans'),
            ),
          ],
        ),
      ),
    );
  }
}
