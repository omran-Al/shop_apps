import 'package:get/get.dart';
// import 'package:shop_apps_omran/src/presentions/login/login_screen.dart';
import 'package:shop_apps/core/utils/content.dart';

class LoginController extends GetxController {
  var isPasswordVisible = false.obs; // Observable for password visibility

  void togglePasswordVisibility() {
    isPasswordVisible.value =
        !isPasswordVisible.value; // Toggle password visibility
  }

  void login(context, screen) {
    pageRouterFinish(context, screen);
    // Implement your login logic here
    // You can use Get.snackbar or Get.to to show messages or navigate to other screens
  }
}
