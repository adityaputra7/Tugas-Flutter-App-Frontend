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
    ));
  }
}
