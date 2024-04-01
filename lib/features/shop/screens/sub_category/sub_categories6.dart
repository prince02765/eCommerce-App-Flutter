import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';

class SubCategoriesScreen6 extends StatelessWidget {
  const SubCategoriesScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Shoes"),
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
                imageUrl: TImages.promoBanner1,
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
                        image: TImages.productImage19,
                        sale: "28%",
                        color: Colors.grey,
                        title: "Nike Air Jordon Single Blue",
                        brand: "Nike",
                        price: "48.0",
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
                        image: TImages.productImage1,
                        sale: "25%",
                        color: Colors.red,
                        title: "Green Nike Air shoes",
                        brand: "Nike",
                        price: "35.0",
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
                        image: TImages.productImage22,
                        sale: "32%",
                        color: Colors.red,
                        title: "Nike Basketball Shoe Green Black",
                        brand: "Nike",
                        price: "54.0",
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
