import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_model.dart';
import 'package:ecommerce_app/data/repositories/user/user_repository.dart';
import 'package:ecommerce_app/features/personalization/screens/profile/widgets/re_suth_user_login.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

import '../../../common/widgets/loaders/loader.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/network_manager.dart';
import '../../../utils/popups/full_screen_loader.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final profileLoading = false.obs;
  Rx<UserModel> user = UserModel.empty().obs;
  final userRepository = Get.put(UserRepository());

  final hidePassword = false.obs;
  final verifyEmail = TextEditingController();
  final verifyPassword = TextEditingController();

  GlobalKey<FormState> reAuthFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
    fetchUserRecord();
  }

  Future<void> fetchUserRecord() async {
    try {
      profileLoading.value = true;
      final user = await userRepository.fetchUserDetails();
      this.user(user);
    } catch (e) {
      user(UserModel.empty());
    } finally {
      profileLoading.value = false;
    }
  }

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      await fetchUserRecord();

      if (user.value.id.isEmpty) {
        if (userCredential != null) {
          final nameParts =
              UserModel.nameParts(userCredential.user!.displayName ?? "");
          final username = UserModel.generateUserName(
              userCredential.user!.displayName ?? "");

          final user = UserModel(
              id: userCredential.user!.uid,
              firstName: nameParts[0],
              lastName:
                  nameParts.length > 1 ? nameParts.sublist(1).join(" ") : "",
              username: username,
              email: userCredential.user!.email ?? "",
              phoneNumber: userCredential.user!.phoneNumber ?? "",
              profilePicture: userCredential.user!.photoURL ?? "");

          await userRepository.saveUserRecord(user);
        }
      }
    } catch (e) {
      TLoaders.warningSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  void deleteAccountWarningPopUp() {
    Get.defaultDialog(
        contentPadding: EdgeInsets.all(TSizes.md),
        title: "Delete Account",
        middleText: "Are you sure, you want to delete account?",
        confirm: ElevatedButton(
          onPressed: () => deleteUserAccount(),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, side: BorderSide(color: Colors.red)),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: TSizes.lg,
            ),
            child: Text("Delete"),
          ),
        ),
        cancel: OutlinedButton(
            onPressed: () => Navigator.of(Get.overlayContext!).pop(),
            child: Text("Cancel")));
  }

  void deleteUserAccount() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          "Processing....", TImages.docerAnimation);

      final auth = AuthenticationRepository.instance;
      final provider =
          auth.authUser!.providerData.map((e) => e.providerId).first;

      if (provider.isNotEmpty) {
        if (provider == "google.com") {
          // await auth.dele
          TFullScreenLoader.stopLoading();
        } else if (provider == "password") {
          TFullScreenLoader.stopLoading();
          Get.to(() => ReAuthLoginForm());
        }
      }
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  Future<void> reAuthenticateEmailAndPassword() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
          "Processing....", TImages.docerAnimation);

      // Check Internet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();

        return;
      }

      if (!reAuthFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.reAuthEmailAndPassword(
          verifyEmail.text.trim(), verifyPassword.text.trim());

      await AuthenticationRepository.instance.deleteAccount();

      TFullScreenLoader.stopLoading();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.warningSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }

  uploadUserProfilePicture() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.gallery,
          imageQuality: 70,
          maxHeight: 512,
          maxWidth: 512);
      if (image != null) {
        final imageUrl =
            await userRepository.uploadImage("Users/Images/Profile/", image);

        Map<String, dynamic> json = {"ProfilePicture": imageUrl};
        await userRepository.updateSingleField(json);

        user.value.profilePicture = imageUrl;
        TLoaders.successSnackBar(
            title: "Congratulations",
            message: "Your profile image has been updated");
      }
    } catch (e) {
      TLoaders.errorSnackBar(title: "Oh Snap!", message: e.toString());
    }
  }
}
