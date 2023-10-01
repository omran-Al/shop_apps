// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_apps/core/presentions/find/state/state_page.dart';
import 'package:shop_apps/core/styles/app_padding.dart';
import 'package:shop_apps/core/utils/size_screen.dart';
import 'package:shop_apps/core/widgets/text_app.dart';
import 'dart:math';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  final controller = Get.put(FindController());

  @override
  void initState() {
    controller.getProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ManagerPadding.p10),
            const Center(
              child: TextApps(
                text: 'Find Products',
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            SizedBox(height: ManagerPadding.p10),
            SearchBar(
              hintText: 'Search',
              hintStyle: const MaterialStatePropertyAll(
                TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              leading: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onTap: () {
                // ignore: avoid_print
                print('Search Done');
              },
            ),
            SizedBox(height: ManagerPadding.p10),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                shrinkWrap: true,
                itemCount: controller.product.length,
                itemBuilder: (BuildContext context, int index) {
                  return Obx(
                    () {
                      if (controller.product.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return _itemsProduct(index);
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _itemsProduct(int index) {
    return Container(
      height: 250,
      padding: const EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
      ),
      width: SizeConfig.screenWidth! * .45,
      decoration: BoxDecoration(
        color: controller.colors[controller.getNumber()],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                border: Border.all(width: .1), // تحديد عرض الإطار
                shape: BoxShape.circle,
              ),
              child: Image.network(
                controller.product[index].image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: ManagerPadding.p8),
          Expanded(
            child: TextApps(
              text: controller.product[index].name,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
