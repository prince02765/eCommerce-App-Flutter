import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/features/shop/models/product_model.dart';
import 'package:get/get.dart';

import '../../../common/widgets/loaders/loader.dart';

class ProductRepository extends GetxController {
  static ProductRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  Future<List<ProductModel>> getFeaturedProducts() async {
    try {
      final snapShot = await _db
          .collection("Products")
          .where("IsFeatured", isEqualTo: true)
          .limit(4)
          .get();
      return snapShot.docs.map((e) => ProductModel.fromSnapshot(e)).toList();
    } catch (e) {
      throw "Something went wrong.";
    }
  }
}
