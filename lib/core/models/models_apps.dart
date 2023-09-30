import 'package:flutter/material.dart';
import 'package:shop_apps/gen/assets.gen.dart';

class NavigaterItems {
  final String label;
  final Widget iconPath;
  final int index;
  final Widget screen;

  NavigaterItems(
      {required this.label,
      required this.iconPath,
      required this.index,
      required this.screen});
}

class ProductModels {
  final String? name;
  final String? image;
  final double? rating;
  final String? id;

  ProductModels({
    this.name,
    this.image,
    this.rating,
    this.id,
  });

  factory ProductModels.fromJson(dynamic json) {
    if (json != null && json is Map<String, dynamic>) {
      return ProductModels(
        name: (json['name'] != null) ? json['name'] : 'omran',
        image: (json['images'][0]['hostedLargeUrl'] != null &&
                json['images'].isNotEmpty)
            ? json['images'][0]['hostedLargeUrl']
            : Assets.images.banner.path,
        rating: (json['rating'] != null) ? json['rating'].toDouble() : 0.0,
        id: json['id'] ?? '',
      );
    }
    return ProductModels(
      name: '',
      image: Assets.images.banner.path,
      rating: 0.0,
      id: '',
    );
  }

  static List<ProductModels> productFromSnashot(List snapdata) {
    return snapdata.map((e) {
      return ProductModels.fromJson(e);
    }).toList();
  }
}
