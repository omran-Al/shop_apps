import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_apps/gen/assets.gen.dart';
import 'package:shop_apps/core/presentions/product/widgets/head_page.dart';
import 'package:shop_apps/core/presentions/product/widgets/search_bar.dart';
import 'package:shop_apps/core/styles/app_color.dart';
import 'package:shop_apps/core/styles/app_padding.dart';
import 'package:shop_apps/core/utils/size_screen.dart';
import 'package:shop_apps/core/widgets/list_product.dart';
import 'package:shop_apps/core/widgets/text_app.dart';
import 'package:shop_apps/state/getx_state.dart';
// import 'package:shop_apps_omran/state/getx/getx_state.dart';

class ProductScrees extends StatefulWidget {
  const ProductScrees({super.key});

  @override
  State<ProductScrees> createState() => _ProductScreesState();
}

class _ProductScreesState extends State<ProductScrees> {
  // List<ProductModels>? _models;
  // bool isLoading = true;

  @override
  void initState() {
    controller.getProduct();
    super.initState();
  }

  final controller = Get.put(ContollerApps());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: ManagerPadding.p15),
            const HeadPage(),
            SizedBox(height: ManagerPadding.p15),
            const SearchBarItems(),
            SizedBox(height: ManagerPadding.p10),
            _imageItems(),
            SizedBox(height: ManagerPadding.p10),
            const Row(
              children: [
                TextApps(
                  text: 'Exclusive Offer',
                  color: Colors.black,
                  fontSize: 25,
                ),
                Spacer(),
                TextApps(
                  text: 'SeeAll',
                  color: ColorManger.primaryColor,
                  fontSize: 20,
                ),
              ],
            ),
            SizedBox(height: ManagerPadding.p10),
            Expanded(
              child: Obx(
                () {
                  final products = controller.product;
                  if (products.isNotEmpty) {
                    return _itemsProduct(products, context);
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListView _itemsProduct(products, context) {
    return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        //itemCount: controllerProduct.product.length,
        itemCount: products!.length,
        itemBuilder: (context, index) {
          //final product = controllerProduct.product[index];

          return ListProduct(
            models: products![index],
          );
        });
  }

  Widget _imageItems() {
    return SizedBox(
        height: SizeConfig.screenHeight! * 0.25,
        child: Image.asset(
          Assets.images.banner.path,
          fit: BoxFit.fill,
        ));
  }
}
