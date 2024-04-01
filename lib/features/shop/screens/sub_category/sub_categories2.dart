import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';

class SubCategoriesScreen2 extends StatelessWidget {
  const SubCategoriesScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Furniture"),
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
                imageUrl: TImages.banner2,
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
                        image: TImages.productImage37,
                        sale: "18%",
                        color: Colors.grey,
                        title: "Kitchen Dining Table",
                        brand: "WoodRylen",
                        price: "145.0",
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
                        image: TImages.productImage41,
                        sale: "14%",
                        color: Colors.red,
                        title: "Office Desk",
                        brand: "EUREKA",
                        price: "256.0",
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
                        image: TImages.productImage35,
                        sale: "28%",
                        color: Colors.grey,
                        title: "Bedroom Wardrobe",
                        brand: "Godrej",
                        price: "180.0",
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
                        image: TImages.productImage33,
                        sale: "28%",
                        color: Colors.red,
                        title: "Bedroom Lamp",
                        brand: "Kapoor",
                        price: "48.0",
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
