import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mengajar_221_p_mobile/data/model/list_result.dart';

class ApiService {
  static const String baseUrl = 'https://restaurant-api.dicoding.dev/';

  Future<ListResult> getList() async {
    final response = await http.get(Uri.parse("${baseUrl}list"));
    if (response.statusCode == 200) {
      return ListResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('gagal');
    }
  }
}
