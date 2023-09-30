import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shop_apps/core/models/models_apps.dart';
import 'package:shop_apps/core/styles/app_color.dart';
import 'package:shop_apps/state/getx_state.dart';

class DashBorad extends StatefulWidget {
  const DashBorad({super.key});

  @override
  State<DashBorad> createState() => _DashBoradState();
}

class _DashBoradState extends State<DashBorad> {
  final ContollerApps controller = Get.put(ContollerApps());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.items[controller.currentIndex].screen,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black38.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 37,
                offset: const Offset(0, -12)),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: controller.currentIndex,
            onTap: (index) {
              // ignore: avoid_print
              print(index);
              setState(() {
                controller.changeBarItems(index);
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: ColorManger.primaryColor,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
            unselectedItemColor: Colors.black,
            items: controller.items.map(
              (index) {
                //final int index = entry.key;
                NavigaterItems item = index;
                return BottomNavigationBarItem(
                  label: item.label,
                  icon: item.iconPath,
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }
}
