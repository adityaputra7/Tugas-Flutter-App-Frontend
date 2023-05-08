import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:api_bojonegoro/model/kecamatanModels.dart';
import 'package:api_bojonegoro/model/apiBojonegoro.dart';
import 'package:api_bojonegoro/frontend/detailapi.dart';

// import 'package:api/detail_page.dart';
import 'package:http/http.dart' as http;

class MenuKecamatanApi extends StatefulWidget {
  MenuKecamatanApi({
    Key ? key
  }): super(key: key);

  @override
  State < MenuKecamatanApi > createState() => _MenuKecamatanState();
}

class _MenuKecamatanState extends State < MenuKecamatanApi > {
  final List <DetailKecamatan> doneDetaiKecamatanList = [];

  @override
  Widget Build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text("Kecamatan di Bojonegoro dengan API Web Service",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'poppins',
            color: Colors.lightBlue,
          ),
        ),
        actions: < Widget > [
          IconButton(
            icon: const Icon(Icons.done_all_outlined),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return doneDetaiKecamatanList(
                      doneDetaiKecamatanList: doneDetaiKecamatanList);
                  }),
                );
              })
        ],
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchKecamatan(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index) {
                  Kecamatan kecamatan = snapshot.data[index];
                  return Card(
                    margin: EdgeInsets.all(5),
                    color: Colors.blue[400],
                    shadowColor: Colors.grey,
                    elevation: 10,
                    child: new InkWell(
                      onTap: () {
                        Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context) {
                              return detailkecamatanapi(
                                kecamatan: kecamatan
                              );
                            }));
                      }, child: Column(
                        mainAxisAlignment: MainAxisSize.min,
                        children: < Widget > [ListTile(
                          leading: Image.network("$(kecamatan.imageasset)"),
                          title: Text("$(kecamatan.nama_kecamatan)",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'poppins',
                            color: Colors.white70),
                      ),
                      subtitle: Text("$(kecamatan.nama_kecamatan)", 
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'poppins',
                        color: Colors.black45),
                        ),
                        ),
                        ],
                         ),
                          ),);
                },);
            }
            return CircularProgressIndicator();
          }),
        ));
  }
}