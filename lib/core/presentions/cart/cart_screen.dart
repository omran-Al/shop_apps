import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:shop_apps_omran/core/models/models_apps.dart';
import 'package:shop_apps/core/presentions/cart/state_cart/controlle_cart.dart';
import 'package:shop_apps/core/styles/app_padding.dart';
import 'package:shop_apps/core/widgets/text_app.dart';
import 'package:shop_apps/gen/assets.gen.dart';

class CartScreens extends StatefulWidget {
  const CartScreens({super.key});

  @override
  State<CartScreens> createState() => _CartScreensState();
}

class _CartScreensState extends State<CartScreens> {
  final contollerCart = Get.put(CarContoller());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
          child: Column(
            children: [
              ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 5,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 100,
                    child:
                        // final products = contollerCart.product;

                        _listItems(),
                  );
                },
                separatorBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _listItems() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRect(
            child: Container(
          width: 80,
          height: 80,
          decoration: const BoxDecoration(
            //  border: Border.all(width: .1),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            Assets.images.banner.path,
            fit: BoxFit.fill,
            scale: 1,
          ),
        )),
        SizedBox(width: ManagerPadding.p15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              child: TextApps(
                text: 'prodcut.name',
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            const TextApps(
              text: 'prodcut.id',
              color: Colors.black,
              fontSize: 15,
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Icon(Icons.remove)),
                  ),
                  SizedBox(width: ManagerPadding.p8),
                  const TextApps(
                    text: '1',
                    color: Colors.black,
                    fontSize: 35,
                  ),
                  SizedBox(width: ManagerPadding.p8),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Icon(Icons.add)),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(width: ManagerPadding.p15),
        SizedBox(
          height: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  size: 15,
                ),
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomCenter,
                child: TextApps(
                  text: '\$4.4',
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
