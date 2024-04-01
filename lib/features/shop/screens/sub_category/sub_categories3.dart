import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';

class SubCategoriesScreen3 extends StatelessWidget {
  const SubCategoriesScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Electronics"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Banner
              TRoundedImage(
                width: double.infinity,
                imageUrl: TImages.banner1,
                applyImageRadius: true,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Sub-Categories
              Column(
                children: [
                  // Heading
                  TSectionHeading(
                    title: "Popularity",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
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
                        image: TImages.productImage51,
                        sale: "10%",
                        color: Colors.red,
                        title: "Iphone 13 pro",
                        brand: "iPhone",
                        price: "840.0",
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Column(
                children: [
                  // Heading
                  TSectionHeading(
                    title: "Newest First",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
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
                  )
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Column(
                children: [
                  // Heading
                  TSectionHeading(
                    title: "Relevance",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
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
                  )
                ],
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Column(
                children: [
                  // Heading
                  TSectionHeading(
                    title: "Customer Review",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
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
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
