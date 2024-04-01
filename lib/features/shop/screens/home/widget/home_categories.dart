import 'package:ecommerce_app/features/shop/controller/category_controller.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../sub_category/sub_categories.dart';
import '../../sub_category/sub_categories2.dart';
import '../../sub_category/sub_categories3.dart';
import '../../sub_category/sub_categories4.dart';
import '../../sub_category/sub_categories5.dart';
import '../../sub_category/sub_categories6.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.put(CategoryController());
    // return Obx(
    //   () {
    //     if (categoryController.featuredCategories.isEmpty) {
    //       return Center(
    //         child: Text(
    //           "Loading...",
    //           style: Theme.of(context)
    //               .textTheme
    //               .bodyMedium!
    //               .apply(color: Colors.white),
    //         ),
    //       );
    //     }
    //     return SizedBox(
    //       height: 80,
    //       child: ListView.builder(
    //         shrinkWrap: true,
    //         itemCount: categoryController.featuredCategories.length,
    //         scrollDirection: Axis.horizontal,
    //         itemBuilder: (_, index) {
    //           final category = categoryController.featuredCategories[index];
    //           return TVerticalImageText(
    //             image: category.image,
    //             title: category.name,
    //             onTap: () => Get.to(() => SubCategoriesScreen()),
    //           );
    //         },
    //       ),
    //     );
    //   },
    // );
    return Center(
      child: SizedBox(
        height: 80,
        // child: ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: categoryController.featuredCategories.length,
        //   scrollDirection: Axis.horizontal,
        //   itemBuilder: (_, index) {
        //     final category = categoryController.featuredCategories[index];
        //     return TVerticalImageText(
        //       image: category.image,
        //       title: category.name,
        //       onTap: () => Get.to(() => SubCategoriesScreen()),
        //     );
        //   },
        // ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TVerticalImageText(
                image: TImages.sportIcon,
                title: "Sport",
                onTap: () => Get.to(() => SubCategoriesScreen()),
              ),
              TVerticalImageText(
                image: TImages.furnitureIcon,
                title: "Furniture",
                onTap: () => Get.to(() => SubCategoriesScreen2()),
              ),
              TVerticalImageText(
                image: TImages.electronicsIcon,
                title: "Electronics",
                onTap: () => Get.to(() => SubCategoriesScreen3()),
              ),
              TVerticalImageText(
                image: TImages.clothIcon,
                title: "Cloths",
                onTap: () => Get.to(() => SubCategoriesScreen4()),
              ),
              TVerticalImageText(
                image: TImages.toyIcon,
                title: "Toys",
                onTap: () => Get.to(() => SubCategoriesScreen5()),
              ),
              TVerticalImageText(
                image: TImages.shoeIcon,
                title: "Shoes",
                onTap: () => Get.to(() => SubCategoriesScreen6()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
