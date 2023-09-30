import 'package:flutter/material.dart';
import 'package:shop_apps/core/models/models_apps.dart';
import 'package:shop_apps/core/styles/app_color.dart';
import 'package:shop_apps/core/utils/size_screen.dart';
import 'package:shop_apps/core/widgets/text_app.dart';

class ListProduct extends StatelessWidget {
  final ProductModels models;

  const ListProduct({
    super.key,
    required this.models,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: SizeConfig.screenWidth! * .50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: .2,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 25,
            left: 26,
            child: Image.network(
              models.image!,
              width: 100,
              height: 80,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 100,
            left: 10,
            child: TextApps(
              text: models.name,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          Positioned(
            top: 125,
            left: 10,
            child: TextApps(
              text: models.id,
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          Positioned(
            top: 160,
            left: 10,
            child: TextApps(
              text: '${models.rating.toString()} \$',
              color: Colors.black,
              fontSize: 30,
            ),
          ),
          //Spacer(),
          Positioned(
            top: 160,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // print('omran');
                // ProductAPi.getProduct();
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: ColorManger.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
