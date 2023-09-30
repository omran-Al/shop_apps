import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_apps/core/styles/style_app.dart';

import 'core/presentions/slpash_screen/splash_screen.dart';

// import 'package:shop_apps_omran/state/getx_state.dart';

class StartApps extends StatelessWidget {
  const StartApps({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => ContollerApps());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: const SplashScreens(),
    );
  }
}
