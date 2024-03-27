import 'package:cloud_firestore/cloud_firestore.dart';
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
}
