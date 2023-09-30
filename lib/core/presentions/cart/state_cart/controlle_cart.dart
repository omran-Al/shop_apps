import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_apps/core/api/api_data.dart';
import 'package:shop_apps/core/models/models_apps.dart';

class CarContoller extends GetxController {
  var product = <ProductModels>[].obs;
  List<Color> colors = [
    Colors.red.withOpacity(.5),
    Colors.green.withOpacity(.5),
    Colors.blue.withOpacity(.5),
    Colors.yellow.withOpacity(.5),
    Colors.orange.withOpacity(.5),
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
