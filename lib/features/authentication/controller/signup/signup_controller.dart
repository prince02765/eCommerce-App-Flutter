import 'package:ecommerce_app/common/widgets/loaders/loader.dart';
import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/helpers/network_manager.dart';
import 'package:ecommerce_app/utils/popups/full_screen_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/repositories/user/user_model.dart';

class SignupController extends GetxController {
  static SignupController get intance => Get.find();

  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  void signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          "We are processing your information", TImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();

        return;
      }

      // Form Validate
      if (!signupFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();

        return;
      }

      // Privacy Policy Check
      if (!privacyPolicy.value) {
        TFullScreenLoader.stopLoading();

        TLoaders.warningSnackBar(
            title: "Accept Privacy Policy",
            message:
                "In order to create account, you must have to read and accept the Privacy Policy.");
        return;
      }

      // Register user to Firebase Auth and save in to Database
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      // Save data
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: userName.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: "",
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      TFullScreenLoader.stopLoading();

      // Show Success message
      TLoaders.successSnackBar(
          title: "Congratulations",
          message: "Your account is created. Verify email to continue");

      // Move to verify email screen
      Get.to(() => VerifyEmailScreen(email: email.text.trim()));
    } catch (e) {
      TFullScreenLoader.stopLoading();

      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
