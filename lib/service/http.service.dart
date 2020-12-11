import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lesson_3_firebase_demo/model/picture.model.dart';

class HttpService {
  static var client = http.Client();

  static Future<dynamic> getAllPicture() async {
    var response = await client.get('https://picsum.photos/v2/list');

    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);
      return jsonObject;
    } else {
      return null;
    }
  }

  static Future<dynamic> getAllPicture100() async {
    var response =
        await client.get('https://picsum.photos/v2/list?page=2&limit=100');

    if (response.statusCode == 200) {
      var jsonObject = json.decode(response.body);

      return jsonObject;
    } else {
      return null;
    }
  }
}
