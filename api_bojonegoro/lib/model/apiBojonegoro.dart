// To parse this JSON data, do
//
//     final kecamatan = kecamatanFromJson(jsonString);

import 'dart:convert';

List<Kecamatan> kecamatanFromJson(String str) =>
    List<Kecamatan>.from(json.decode(str).map((x) => Kecamatan.fromJson(x)));

String kecamatanToJson(List<Kecamatan> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Kecamatan {
  int id;
  String namaKecamatan;
  int jumlahKelurahan;
  int jumlahDesa;

  Kecamatan({
    required this.id,
    required this.namaKecamatan,
    required this.jumlahKelurahan,
    required this.jumlahDesa,
  });

  factory Kecamatan.fromJson(Map<String, dynamic> json) => Kecamatan(
        id: json["id"],
        namaKecamatan: json["nama_kecamatan"],
        jumlahKelurahan: json["jumlah_kelurahan"],
        jumlahDesa: json["jumlah_desa"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nama_kecamatan": namaKecamatan,
        "jumlah_kelurahan": jumlahKelurahan,
        "jumlah_desa": jumlahDesa,
      };
}
