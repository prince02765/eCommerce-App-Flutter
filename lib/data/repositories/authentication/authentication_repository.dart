import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/features/authentication/screens/onbarding/onboarding.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/navigation_menu.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      if (user.emailVerified) {
        Get.offAll(() => NavigationMenu());
      } else {
        Get.offAll(() => VerifyEmailScreen(
              email: _auth.currentUser?.email,
            ));
      }
    } else {
      // Local Storage
      deviceStorage.writeIfNull("IsFirstTime", true);
      deviceStorage.read("IsFirstTime") != true
          ? Get.offAll(() => LoginScreen())
          : Get.offAll(OnBoardingScreen());
    }
  }

  // Email auth - Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw "Something went wrong. Please try again.";
    }
  }

  // Email auth - Verification
  Future<void> sendEmailVerification() async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      throw "Something went wrong. Please try again.";
    }
  }

  // Email auth - Logout
  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      Get.offAll(() => LoginScreen());
    } catch (e) {
      throw "Something went wrong. Please try again.";
    }
  }
}
