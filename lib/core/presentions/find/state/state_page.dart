import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_apps/core/api/api_data.dart';
import 'package:shop_apps/core/models/models_apps.dart';

class FindController extends GetxController {
  var product = <ProductModels>[].obs;
  List<Color> colors = const [
    Color(0xff53B175),
    Color(0xffF8A44C),
    Color(0xffF7A593),
    Color(0xffD3B0E0),
    Color(0xffFDE598),
    Color(0xffB7DFF5),
    Color(0xff836AF6),
    Color(0xffD73B77),
  ];

  int getNumber() {
    final random = Random();
    int randomInt = random.nextInt(5);
    return randomInt;
  }

  void getProduct() async {
    product.value = await ProductAPi.getProduct();
  }
}
