import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_apps/gen/assets.gen.dart';
import 'package:shop_apps/core/presentions/dashborad/dash_board.dart';
import 'package:shop_apps/core/presentions/login/widgets/text_login.dart';
import 'package:shop_apps/core/styles/app_padding.dart';
import 'package:shop_apps/core/utils/size_screen.dart';
import 'package:shop_apps/core/widgets/text_app.dart';

import '../../styles/app_color.dart';
// import '../../utils/content.dart';
import 'package:get/get.dart';

import 'state/login_controller.dart'; // Import GetX

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

class LoginScreen extends StatelessWidget {
  // bool _isPasswordVisible = false;
  final LoginController controller = Get.put(LoginController());

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headLogin(),
          SizedBox(height: ManagerPadding.p8),
          _bodyLoginandPassword(context),
          Expanded(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        Assets.images.rectangle17.path,
                      ),
                      fit: BoxFit.cover)),
            ),
          )
        ],
      ),
    );
  }

  Container _bodyLoginandPassword(BuildContext context) {
    return Container(
      height: 350,
      width: SizeConfig.screenWidth! * 0.90,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: ManagerPadding.p10),
      child: Column(
        children: [
          const LoginAndPassWordWidgats(
            text: 'Email',
            hintText: 'omar.alkhlof@gmail.com',
            textInputType: TextInputType.emailAddress,
          ),
          SizedBox(height: ManagerPadding.p40),
          LoginAndPassWordWidgats(
            text: 'passWord',
            hintText: '**************',
            obscureText: controller.isPasswordVisible.value,
            textInputType: TextInputType.visiblePassword,
            suffixIcon: InkWell(
              onTap: () {
                // setState(() {
                //   _isPasswordVisible = !_isPasswordVisible;
                // });
                controller.togglePasswordVisibility();
              },
              child: Icon(
                controller.isPasswordVisible.value
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
          SizedBox(height: ManagerPadding.p15),
          const Align(
            alignment: Alignment.bottomRight,
            child: TextApps(
              text: 'Forgot PassWord?',
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          SizedBox(height: ManagerPadding.p15),
          _buttonStart(context),
          SizedBox(height: ManagerPadding.p15),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextApps(
                text: 'Don’t have an account?',
                fontSize: 14,
                color: Colors.black,
              ),
              TextApps(
                text: ' Singup',
                color: ColorManger.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _headLogin() {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.rectangle17.path),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                heightFactor: 2,
                child: SvgPicture.asset(Assets.images.icons.brad)),
            const TextApps(
              text: 'Loging',
              fontSize: 26,
              color: Colors.black,
            ),
            SizedBox(height: ManagerPadding.p8),
            const TextApps(
              text: 'Enter your emails and password',
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.normal,
            )
          ],
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
            controller.login(context, const DashBorad());
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (_) => const LoginScreen()));
          },
          child: const TextApps(
            text: 'Log In',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
