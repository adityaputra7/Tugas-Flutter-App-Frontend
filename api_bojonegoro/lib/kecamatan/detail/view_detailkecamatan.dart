import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final nama_kecamatan, jumlah_desa, jumlah_kelurahan, description, path;

  const DetailPage(
      {super.key,
      this.nama_kecamatan = "",
      this.jumlah_desa = "",
      this.jumlah_kelurahan = "",
      this.description,
      this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Detail $nama_kecamatan',
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Josefin Sans'),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          path != null
              ? Image.network(path)
              : Container(
                  margin: const EdgeInsets.all(20),
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey),
                ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$nama_kecamatan',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Josefin Sans'),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text('$description $nama_kecamatan',
                    style: const TextStyle(fontFamily: 'Josefin Sans')),
                const Divider(),
                Text('Desa : $jumlah_desa',
                    style: const TextStyle(fontFamily: 'Josefin Sans')),
                Text('Kelurahan : $jumlah_kelurahan',
                    style: const TextStyle(fontFamily: 'Josefin Sans')),
              ],
            ),
          )
        ],
      ),
      //Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.close),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
