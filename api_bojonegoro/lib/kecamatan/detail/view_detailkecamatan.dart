import 'package:flutter/material.dart';
import 'package:api_bojonegoro/kecamatan/detail/controller_detailkecamatan.dart';

class DetailKecamatanView extends StatefulWidget {
  @override
  _DetailKecamatanViewState createState() => _DetailKecamatanViewState();
}

class _DetailKecamatanViewState extends DetailKecamatanController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      centerTitle: true,
      title: Text(
        'Ini Adalah Detail Kecamatan',
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins'),
      ),
      backgroundColor: Colors.green,
    ));
  }
}
