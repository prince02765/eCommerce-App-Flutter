import 'package:ecommerce_app/common/widgets/brand/brand_show_case3.dart';
import 'package:ecommerce_app/features/shop/models/category_model.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';
import '../../../../../common/widgets/products/product_cards/verticals/product_card_vertical1.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab3 extends StatelessWidget {
  const TCategoryTab3({super.key});

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
              const TBrandShowcase3(
                images: [
                  TImages.productImage52,
                  TImages.productImage53,
                  TImages.productImage11
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
                    image: TImages.productImage51,
                    sale: "10%",
                    color: Colors.red,
                    title: "Iphone 13 pro",
                    brand: "iPhone",
                    price: "840.0",
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
                    image: TImages.productImage12,
                    sale: "16%",
                    color: Colors.grey,
                    title: "Samsung Galaxy S9+",
                    brand: "Samsung",
                    price: "560.0",
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
                    image: TImages.productImage38,
                    sale: "10%",
                    color: Colors.grey,
                    title: "Samsung kitchen Refrigerator",
                    brand: "Samsung",
                    price: "620.0",
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
                    image: TImages.productImage57,
                    sale: "32%",
                    color: Colors.red,
                    title: "Acer Laptop var",
                    brand: "Acer",
                    price: "440.0",
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
