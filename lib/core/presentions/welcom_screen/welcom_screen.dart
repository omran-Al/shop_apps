import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_apps/gen/assets.gen.dart';
import 'package:shop_apps/core/presentions/login/login_screen.dart';
import 'package:shop_apps/core/styles/app_color.dart';
import 'package:shop_apps/core/styles/app_padding.dart';
import 'package:shop_apps/core/utils/content.dart';
import 'package:shop_apps/core/widgets/text_app.dart';

import '../../utils/size_screen.dart';

class WelcomScreens extends StatelessWidget {
  final backImage = Assets.images.welcomScreen.path;

  WelcomScreens({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorManger.primaryColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(),
              SvgPicture.asset(
                Assets.images.icons.iconsWelcome,
                width: 50,
                height: 58,
              ),
              SizedBox(height: ManagerPadding.p10),
              const TextApps(text: ' Welcome \nto our store'),
              SizedBox(height: ManagerPadding.p8),
              TextApps(
                text: 'Ger your groceries in as fast as one hour',
                fontSize: 12,
                color: const Color(0xffFCFCFC).withOpacity(0.7),
              ),
              SizedBox(height: ManagerPadding.p40),
              _buttonStart(context),
              SizedBox(height: ManagerPadding.p40),
            ],
          ),
        ),
      ),
    );
  }

  Container _buttonStart(context) {
    return Container(
      height: 50,
      width: SizeConfig.screenWidth! * .80,
      decoration: const BoxDecoration(
        color: ColorManger.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {
            pageRouterFinish(context, LoginScreen());
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (_) => const LoginScreen()));
          },
          child: const TextApps(
            text: 'Get Started',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
