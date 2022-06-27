import 'dart:convert';
import 'package:http/http.dart' as http;

class ClienteHttp {
  Future<List<dynamic>> getJson({required String link}) async {
    http.Response response = await http.get(Uri.parse(link));
    //print(response.body);
    return json.decode(response.body);
  }

  Future<dynamic> postJson({required String link, required Map<String, dynamic> body}) async {
    http.Response response = await http.post(Uri.parse(link), body: body);
    //print(response.body);
    return json.decode(response.body);
  }

}

