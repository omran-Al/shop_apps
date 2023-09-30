import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_apps/core/models/models_apps.dart';

class ProductAPi {
  static Future<List<ProductModels>> getProduct() async {
    List temp = [];
    try {
      var pathUrl = "https://yummly2.p.rapidapi.com/feeds/list?limit=5&start=0";
      var url = Uri.parse(pathUrl);
      http.Response response = await http.get(
        url,
        headers: {
          "X-RapidAPI-Key":
              "91f76ef47amshee1771472d463bcp197519jsn6fd4234343b6",
          "X-RapidAPI-Host": "yummly2.p.rapidapi.com",
        },
      );
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        for (var index in data['feed']) {
          temp.add(index['content']['details']);
        }
        // print(_temp[0]['totalTime']);
        return ProductModels.productFromSnashot(temp);
      }
    } catch (e) {
      // ignore: avoid_print
      print('Error api ${e.toString()}');
    }
    return ProductModels.productFromSnashot(temp);
  }
}
