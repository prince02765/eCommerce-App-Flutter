import 'package:ecommerce_app/common/widgets/brand/brand_show_case4.dart';
import 'package:ecommerce_app/features/shop/models/category_model.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';
import '../../../../../common/widgets/products/product_cards/verticals/product_card_vertical1.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab4 extends StatelessWidget {
  const TCategoryTab4({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Brands
              const TBrandShowcase4(
                images: [
                  TImages.productImage4,
                  TImages.productImage60,
                  TImages.productImage24
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              // Products
              TSectionHeading(
                title: "You might like",
                onPressed: () {},
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // TGridLayout(
              //     itemCount: 4,
              //     itemBuilder: (_, index) => const TProductCardVertical()),

              SizedBox(
                height: 120,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (context, index) => TProductCardHorizontal(
                    image: TImages.productImage64,
                    sale: "12%",
                    color: Colors.grey,
                    title: "Leather Jacket",
                    brand: "Karl Lagerfeld",
                    price: "90.0",
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (context, index) => TProductCardHorizontal(
                    image: TImages.productImage3,
                    sale: "24%",
                    color: Colors.red,
                    title: "Nike Jacket",
                    brand: "Nike",
                    price: "140.0",
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (context, index) => TProductCardHorizontal(
                    image: TImages.productImage60,
                    sale: "16%",
                    color: Colors.grey,
                    title: "Slim Fit Brand Print Polo",
                    brand: "U.S. POLO",
                    price: "46.0",
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  itemBuilder: (context, index) => TProductCardHorizontal(
                    image: TImages.productImage4,
                    sale: "28%",
                    color: Colors.red,
                    title: "MEN'S 511 BLUE SLIM FIT JEANS",
                    brand: "Levi'S",
                    price: "180.0",
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
