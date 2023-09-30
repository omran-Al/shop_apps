import 'package:flutter/material.dart';
import 'package:shop_apps/gen/fonts.gen.dart';

class TextApps extends StatelessWidget {
  final String? fontFamliy;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final String? text;

  const TextApps({
    super.key,
    required this.text,
    this.fontFamliy = FontFamily.gilroy,
    this.color = Colors.black,
    this.fontSize = 35,
    this.fontWeight = FontWeight.w600,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      overflow: TextOverflow.clip,
      maxLines: 2,
      style: TextStyle(
        fontFamily: fontFamliy,
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
