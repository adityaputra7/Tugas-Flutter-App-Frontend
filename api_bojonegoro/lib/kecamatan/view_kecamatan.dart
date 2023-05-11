import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:api_bojonegoro/kecamatan/detail/view_detailkecamatan.dart';
import 'package:api_bojonegoro/model/kecamatanModels.dart';
import 'package:api_bojonegoro/apiModelBojonegoro.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class KecamatanView extends StatefulWidget {
  @override
  _KecamatanState createState() => _KecamatanState();
}

class _KecamatanState extends State<KecamatanView> {
  List _get = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('28 Kecamatan di Bojonegoro',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins')),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: _get.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext _) => DetailKecamatanView())),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset('../images/logo-kabupaten.png'),
            ),
            title: Text(
              '${_get[index]["nama_kecamatan"]}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              '${_get[index]["nama_kecamatan"]}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }

  Future _getData() async {
    try {
      final response = await http.get(Uri.parse("http://localhost/kecamatan"));
      // return jsonDecode(response.body);

      // untuk cek data
      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _get = data[0];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
