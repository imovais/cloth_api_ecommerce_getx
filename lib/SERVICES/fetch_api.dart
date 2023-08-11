
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../MODELS/api_data.dart';

class FetchApi {
  String testData = 'data';

  // Fetch Api Data

  Future fetchingApi(String baseUrl, String urlKeyword) async {
    var response = await http.get(Uri.parse(baseUrl + urlKeyword));
    List<dynamic> jsondata = jsonDecode(response.body.toString());
    //var data = jsondata.map((e) => Product.fromJson(e));
    List<Product> data = [];
    for (var item in jsondata) {
      data.add(Product.fromJson(item));
    }
    return data;
  }
}
