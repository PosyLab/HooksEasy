/// Ignore print warnings as we may need to debug on production in some cases
// ignore_for_file: avoid_print, avoid_catches_without_on_clauses
import 'dart:convert';

import 'package:http/http.dart' as http;

class HooksEasy {
  HooksEasy({
    required this.url,
    this.headers = const {},
    this.debug = false,
  });

  /// Webhook API
  final String url;

  /// Request headers
  final Map<String, String> headers;

  /// Debug mode to print error logs
  bool debug;

  /// Send request
  Future<Map?> send({required Map<String, dynamic> data}) async {
    try {
      final uri = Uri.parse(url);

      final requestHeaders = {
        'Content-Type': 'application/json',
        ...headers,
      };

      final body = jsonEncode(data);

      final response = await http.post(
        uri,
        headers: requestHeaders,
        body: body,
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to send request');
      }
    } catch (err) {
      if (debug) {
        print('[HooksEasy] Error: $err');
      }
    }
    return null;
  }
}
