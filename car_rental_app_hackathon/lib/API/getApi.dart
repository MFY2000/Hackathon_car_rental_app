// ignore_for_file: file_names

import 'dart:convert';

import 'package:http/http.dart' as http;

Future<dynamic> getApi(String apiRoute) async {
  final response = await http.get(Uri.parse(apiRoute));

  if (response.statusCode == 200) {
    final items = json.decode(response.body);

    return (items);
  } else {
    print("not running because of error");
    throw Exception('Failed to load album');
  }
}
