import 'package:flutter/material.dart';
import 'package:api_bojonegoro/kecamatan/controller_kecamatan.dart';

class KecamatanView extends StatefulWidget {
  @override
  _KecamatanState createState() => _KecamatanState();
}

class _KecamatanState extends KecamatanController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('28 Kecamatan di Bojonegoro'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Kecamatan Bojonegoro',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              'Adalah Sebuah Kecamatan di Kabupaten Bojonegoro',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
