import 'package:ecommerce_app/common/widgets/brand/brand_show_case6.dart';
import 'package:ecommerce_app/features/shop/models/category_model.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';
import '../../../../../common/widgets/products/product_cards/verticals/product_card_vertical1.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab6 extends StatelessWidget {
  const TCategoryTab6({super.key});

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
              const TBrandShowcase6(
                images: [
                  TImages.productImage8,
                  TImages.productImage21,
                  TImages.productImage23
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
                    image: TImages.productImage19,
                    sale: "28%",
                    color: Colors.grey,
                    title: "Nike Air Jordon Single Blue",
                    brand: "Nike",
                    price: "48.0",
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
                    image: TImages.productImage1,
                    sale: "25%",
                    color: Colors.red,
                    title: "Green Nike Air shoes",
                    brand: "Nike",
                    price: "35.0",
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
                    image: TImages.productImage22,
                    sale: "32%",
                    color: Colors.red,
                    title: "Nike Basketball Shoe Green Black",
                    brand: "Nike",
                    price: "54.0",
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
                    image: TImages.productImage2,
                    sale: "15%",
                    color: Colors.grey,
                    title: "White Nike Air shoes",
                    brand: "Nike",
                    price: "28.0",
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
