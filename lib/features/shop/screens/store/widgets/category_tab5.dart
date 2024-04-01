import 'package:ecommerce_app/common/widgets/brand/brand_show_case5.dart';
import 'package:ecommerce_app/features/shop/models/category_model.dart';

import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';
import '../../../../../common/widgets/products/product_cards/verticals/product_card_vertical1.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab5 extends StatelessWidget {
  const TCategoryTab5({super.key});

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
              const TBrandShowcase5(
                images: [
                  TImages.productImage31,
                  TImages.productImage30,
                  TImages.productImage29
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
                    image: TImages.productImage28,
                    sale: "12%",
                    color: Colors.red,
                    title: "Adidas Football",
                    brand: "Adidas",
                    price: "52.0",
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
                    image: TImages.productImage29,
                    sale: "24%",
                    color: Colors.grey,
                    title: "Baseball Bat",
                    brand: "DeMarini",
                    price: "180.0",
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
                    image: TImages.productImage30,
                    sale: "24%",
                    color: Colors.red,
                    title: "MRF Virat Kohli Genius King Cricket Bat",
                    brand: "MRF",
                    price: "260.0",
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
                    image: TImages.productImage31,
                    sale: "16%",
                    color: Colors.grey,
                    title: "WILSON PRO STAFF NOIR 97 V14",
                    brand: "WILSON",
                    price: "80.0",
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
