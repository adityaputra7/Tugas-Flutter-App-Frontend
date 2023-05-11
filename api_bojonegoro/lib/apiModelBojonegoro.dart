// To parse this JSON data, do
//
//     final Bojonegoro = BojonegoroFromJson(jsonString);

import 'dart:convert';

List<Bojonegoro> BojonegoroFromJson(String str) =>
    List<Bojonegoro>.from(json.decode(str).map((x) => Bojonegoro.fromJson(x)));

String BojonegoroToJson(List<Bojonegoro> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Bojonegoro {
  int id;
  String namaKecamatan;
  String jumlahDesa;
  String jumlahKelurahan;

  Bojonegoro({
    required this.id,
    required this.namaKecamatan,
    required this.jumlahDesa,
    required this.jumlahKelurahan,
  });

  factory Bojonegoro.fromJson(Map<String, dynamic> json) => Bojonegoro(
        id: json["id"],
        namaKecamatan: json["nama_kecamatan"],
        jumlahDesa: json["jumlah_desa"],
        jumlahKelurahan: json["jumlah_kelurahan"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_kecamatan": namaKecamatan,
        "jumlah_desa": jumlahDesa,
        "jumlah_kelurahan": jumlahKelurahan,
      };
}
