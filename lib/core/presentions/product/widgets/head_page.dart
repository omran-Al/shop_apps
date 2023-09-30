import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_apps/gen/assets.gen.dart';
import 'package:shop_apps/core/styles/app_padding.dart';
import 'package:shop_apps/core/widgets/text_app.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.images.icons.brad, width: 40, height: 40),
        SizedBox(height: ManagerPadding.p8),
        TextButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.black,
                size: 20,
              ),
              SizedBox(width: ManagerPadding.p8),
              const TextApps(
                text: 'Dhaka, Banassre',
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              )
            ],
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
