import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:api_bojonegoro/kecamatan/detail/view_detailkecamatan.dart';
import 'package:http/http.dart' as http;

class KecamatanView extends StatefulWidget {
  const KecamatanView({super.key});

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
        title: const Text('Kecamatan di Bojonegoro',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Josefin Sans')),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: _get.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: _get[index]['path'] != null
                  ? Image.network(
                      _get[index]['path'],
                      width: 25,
                    )
                  : const Center(),
            ),
            title: Text(
              '${_get[index]['id']}. ${_get[index]['nama_kecamatan']}',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontFamily: 'Josefin Sans'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => DetailPage(
                    nama_kecamatan: _get[index]['nama_kecamatan'],
                    jumlah_desa: _get[index]['jumlah_desa'],
                    jumlah_kelurahan: _get[index]['jumlah_kelurahan'],
                    description: _get[index]['description'],
                    path: _get[index]['path'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Future _getData() async {
    try {
      final response =
          await http.get(Uri.parse("http://192.168.100.6/kecamatan"));
      // return jsonDecode(response.body);

      // untuk cek data
      if (response.statusCode == 200) {
        print(response.body);
        final data = jsonDecode(response.body);
        setState(() {
          _get = data['data'];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}
