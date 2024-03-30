import 'package:get/get.dart';

import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical1.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical2.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical3.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical4.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical5.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical6.dart';
import '../all_products/all_products.dart';
import 'widget/home_appbar.dart';
import 'widget/home_categories.dart';
import 'widget/promo_slider.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // Searchbar
                  const TSearchContainer(
                    text: "Search on Store",
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        TSectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: TColors.white,
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),

                        // Categories
                        const THomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TPromoSlider(
                    banners: [
                      TImages.banner3,
                      TImages.banner4,
                      TImages.banner7,
                      TImages.banner8,
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSectionHeading(
                    title: "Popular Products",
                    onPressed: () => Get.to(() => AllProducts()),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical(),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical3(),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical4(),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TGridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const TProductCardVertical6(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
