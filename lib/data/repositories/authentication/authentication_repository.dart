import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/features/authentication/screens/onbarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();

  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    // Local Storage
    deviceStorage.writeIfNull("IsFirstTime", true);
    deviceStorage.read("IsFirstTime") != true
        ? Get.offAll(() => LoginScreen())
        : Get.offAll(OnBoardingScreen());
  }
}
