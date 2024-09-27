import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData(String username, String password, String apiUrl, String service) async {


  final credentials = base64Encode(utf8.encode('$username:$password'));

  try {
    final response = await http.get(
      Uri.parse(apiUrl+service),
      headers: {
        'Authorization': 'Basic $credentials',
      },
    );

    if (response.statusCode == 200) {
      // Process successful response
      final data = jsonDecode(response.body);
      if (kDebugMode) {
        print(data);
      }
    } else {
      // Handle error
      if (kDebugMode) {
        print('Request failed with status: ${response.statusCode}');
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print('Error: $e');
    }
  }
}
