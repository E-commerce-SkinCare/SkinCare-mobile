// import 'dart:html';
import 'package:dio/dio.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class Crud {
  PostRequest(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url), body: data);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        print("Error");
      }
    } catch (e) {
      print("Error  Catch");
    }
  }
}
