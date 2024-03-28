import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:ecommerce_app/data/repositories/user/user_model.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<UserModel> fetchUserDetails() async {
    try {
      final documentSnapshot = await _db
          .collection("Users")
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .get();
      if (documentSnapshot.exists) {
        return UserModel.fromSnapshot(documentSnapshot);
      } else {
        return UserModel.empty();
      }
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<void> updateUserDetails(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).update(user.toJson());
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<void> updateSingleField(Map<String, dynamic> json) async {
    try {
      await _db
          .collection("Users")
          .doc(AuthenticationRepository.instance.authUser?.uid)
          .update(json);
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }

  Future<void> removeUserRecord(String userId) async {
    try {
      await _db.collection("Users").doc(userId).delete();
    } catch (e) {
      throw "Something went wrong. Please try again";
    }
  }
}
