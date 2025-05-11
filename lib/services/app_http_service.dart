import 'dart:convert';

import 'package:http/http.dart' as http;

class AppHttpService {
  static Future<http.Response> signUp(
    String url,
    Map<String, String> body,
  ) async {
    final result = await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(body),
    );
    return result;
  }

  static Future<http.Response> getUser(String url) async {
    final result = http.get(
      Uri.parse(url),
      headers: {'Content-Type': "application/json"},
    );
    return result;
  }
}
