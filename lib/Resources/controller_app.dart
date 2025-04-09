import 'package:get/get.dart';

class PasswordController extends GetxController {
  var isObscure = true.obs;
}

class SplashController extends GetxController {
  var showLogo = true.obs;

  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 2), () {
      showLogo.value = false;

      Future.delayed(const Duration(seconds: 2), () {
        Get.offAllNamed('/signin');
      });
    });
  }
}
