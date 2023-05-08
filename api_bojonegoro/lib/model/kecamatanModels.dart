import 'apiBojonegoro.dart';
import 'package:http/http.dart' as http;

Future<List<Kecamatan>> fetchKecamatan() async {
  String link = "http://192.168.100.6/kecamatan";
  final response = await http.get(Uri.parse(link));
  return kecamatanFromJson(response.body);
}
