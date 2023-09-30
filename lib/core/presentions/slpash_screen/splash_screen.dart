import 'package:flutter/material.dart';
import 'package:shop_apps/gen/assets.gen.dart';
import 'package:shop_apps/core/presentions/welcom_screen/welcom_screen.dart';
import 'package:shop_apps/core/styles/app_color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({super.key});

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens>
    with SingleTickerProviderStateMixin {
  AnimationController? _animatedContainer;
  Animation<double>? fading;

  @override
  void initState() {
    super.initState();
    const delayTime = Duration(
      seconds: 6,
    );
    _animatedContainer = AnimationController(
      vsync: this,
      duration: delayTime,
    );

    fading = Tween<double>(begin: .20, end: 1).animate(_animatedContainer!);
    // fading = CurvedAnimation(
    //     parent: _animatedContainer!, curve: Curves.fastOutSlowIn);
    // Animation<int> alpha = IntTween(begin: 0, end: 255).animate(fading!);
    _animatedContainer!.repeat(reverse: true);
    onTimerFinish(delayTime);
    _animatedContainer?.forward();
  }

  @override
  void dispose() {
    _animatedContainer!.dispose();
    super.dispose();
  }

  onTimerFinish(delayTime) {
    Future.delayed(
      delayTime,
      () => _pageNews(),
    );
  }

  _pageNews() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (builder) => WelcomScreens(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primaryColor,
      body: Center(
        child: GestureDetector(
          onTap: () {
            //   onTimerFinish();
          },
          child: FadeTransition(
            opacity: fading!,
            child: SvgPicture.asset(
              Assets.images.splashScreen,
            ),
          ),
        ),
      ),
    );
  }
}
