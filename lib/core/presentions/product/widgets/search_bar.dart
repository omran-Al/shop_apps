import 'package:flutter/material.dart';
import 'package:shop_apps/core/utils/size_screen.dart';

class SearchBarItems extends StatelessWidget {
  const SearchBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(horizontal: 20),
      width: SizeConfig.screenWidth! * 0.96,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),

      child: const TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Stor',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
