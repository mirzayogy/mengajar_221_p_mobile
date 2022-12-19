import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mengajar_221_p_mobile/model/bagianread.dart';

class ApiService {
  static const String baseUrl = 'http://10.0.2.2/penggajian_api/api/';

  Future<BagianRead> getBagian() async {
    final response = await http.get(Uri.parse("${baseUrl}bagian/read.php"));
    if (response.statusCode == 200) {
      return BagianRead.fromJson(json.decode(response.body));
    } else {
      throw Exception('gagal');
    }
  }

  Future<http.Response> createBagian(String nama) async {
    final response = await http.post(
      Uri.parse("${baseUrl}bagian/create.php"),
      body: jsonEncode(<String, String>{
        'nama': nama,
      }),
    );
    return response;
  }
}
