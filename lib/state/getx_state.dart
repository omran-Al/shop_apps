import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_apps/core/models/models_apps.dart';
import 'package:shop_apps/core/presentions/account/account_page.dart';
import 'package:shop_apps/core/presentions/cart/cart_screen.dart';
import 'package:shop_apps/core/presentions/find/find_page.dart';
import 'package:shop_apps/core/presentions/product/product_screen.dart';
import 'package:shop_apps/core/api/api_data.dart';

//test Apps
class ContollerApps extends GetxController {
  int currentIndex = 0;
  var product = <ProductModels>[].obs;

  List<NavigaterItems> items = [
    NavigaterItems(
        label: "Shop",
        iconPath: const Icon(Icons.shop_2),
        index: 0,
        screen: const ProductScrees()),
    NavigaterItems(
        label: "Explore",
        iconPath: const Icon(Icons.explore),
        index: 1,
        screen: const FindPage()),
    NavigaterItems(
      label: "Cart",
      iconPath: const Icon(Icons.card_travel),
      index: 2,
      screen: const CartScreens(),
    ),
    // NavigaterItems(
    //   label: "Favourite",
    //   iconPath: const Icon(Icons.favorite),
    //   index: 3,
    //   screen: const Center(
    //     child: Text('Favourite'),
    //   ),
    // ),
    NavigaterItems(
        label: "Account",
        iconPath: const Icon(Icons.account_balance),
        index: 4,
        screen: const AccountScreen()),
  ];

  void changeBarItems(index) {
    if (index >= 0 && index < items.length) {
      currentIndex = index;
      refresh();
    }
  }

  void getProduct() async {
    product.value = await ProductAPi.getProduct();
  }
}
