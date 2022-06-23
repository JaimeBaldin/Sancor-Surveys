import 'dart:convert';
import 'package:http/http.dart' as http;

class ClienteHttp {
  Future<List<dynamic>> getJson({required String link}) async {
    http.Response response = await http.get(Uri.parse(link));
    print(response.body);
    return json.decode(response.body);
  }
}

