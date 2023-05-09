import 'package:flutter/material.dart';
import 'package:api_bojonegoro/info/controller_info.dart';

class InfoView extends StatefulWidget {
  @override
  _InfoViewState createState() => _InfoViewState();
}

class _InfoViewState extends InfoController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Text(
        'Tentang Aplikasi',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins'),
      ),
      backgroundColor: Colors.green,
    ));
  }
}
