import 'package:ecommerce_app/common/widgets/loaders/loader.dart';
import 'package:ecommerce_app/features/shop/models/product_model.dart';
import 'package:get/get.dart';

import '../../../data/repositories/product/product_repository.dart';

class ProductController extends GetxController {
  static ProductController get instance => Get.find();

  final productRepository = Get.put(ProductRepository());
  RxList<ProductModel> featuredProducts = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchFeaturedProducts();
    super.onInit();
  }

  void fetchFeaturedProducts() async {
    try {
      final products = await productRepository.getFeaturedProducts();

      featuredProducts.assignAll(products);
    } catch (e) {
      TLoaders.errorSnackBar(title: "On Snap!", message: e.toString());
    }
  }
}
