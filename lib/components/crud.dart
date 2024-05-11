// // import 'dart:html';
// import 'package:dio/dio.dart';

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Crud {
//   PostRequest(String url, Map data) async {
//     try {
//       var response = await http.post(Uri.parse(url), body: data);
//       if (response.statusCode == 200) {
//         var responsebody = jsonDecode(response.body);
//         return responsebody;
//       } else {
//         print("Error");
//       }
//     } catch (e) {
//       print("Error  Catch");
//     }
//   }
// }

// import 'package:http/http.dart' as http;
// import 'dart:convert';

// Future<void> login(String email, String password) async {
//   final response = await http.post(
//     Uri.parse('https://beglowy.000webhostapp.com/api/login'),
//     body: json.encode({'email': email, 'password': password}),
//     headers: {'Content-Type': 'application/json'},
//   );

//   if (response.statusCode == 200) {
//     print("done");
//   } else {
//     print("failed");
//   }
// }
import 'dart:convert';
import 'package:http/http.dart' as http;

class Crud {
  Future<Map<String, dynamic>> postRequest(
      String url, Map<String, String> body) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(body),
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        print("faillllllllled");
        return {"status": "error", "message": "Failed to connect to server."};
      }
    } catch (e) {
      print(e);
      return {"status": "error", "message": "Failed to connect to server."};
    }
  }
}
