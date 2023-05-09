import 'package:flutter/material.dart';
import 'package:api_bojonegoro/kecamatan/controller_kecamatan.dart';
import 'package:api_bojonegoro/kecamatan/detail/view_detailkecamatan.dart';

class KecamatanView extends StatefulWidget {
  @override
  _KecamatanState createState() => _KecamatanState();
}

class _KecamatanState extends KecamatanController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('28 Kecamatan di Bojonegoro'),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext _) => DetailKecamatanView())),
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset('../images/logo-kabupaten.png'),
            ),
            title: Text(
              'Kecamatan Bojonegoro',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              'Adalah Sebuah Kecamatan di Kabupaten Bojonegoro',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          );
        },
      ),
    );
  }
}
