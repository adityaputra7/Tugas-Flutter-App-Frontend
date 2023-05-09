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
          title: Text(
            'Ini Adalah Detail Kecamatan',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'poppins'),
          ),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.all(0.0), children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              accountEmail: Text('adityaputrairfandi@proton.me'),
              accountName: Text('Aditya Putra Irfandi'),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/'),
              title: Text('Home'),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed('/kecamatan'),
              title: Text('Kecamatan'),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.folder,
                  color: Colors.white,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Info'),
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.info,
                  color: Colors.white,
                ),
              ),
            )
          ]),
        ),
        body: SingleChildScrollView());
  }
}
