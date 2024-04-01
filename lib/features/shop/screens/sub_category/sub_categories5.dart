import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/horizontals/product_card_horizontal.dart';

class SubCategoriesScreen5 extends StatelessWidget {
  const SubCategoriesScreen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Toys"),
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
                        image: TImages.productImage28,
                        sale: "12%",
                        color: Colors.red,
                        title: "Adidas Football",
                        brand: "Adidas",
                        price: "52.0",
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
                        image: TImages.productImage29,
                        sale: "24%",
                        color: Colors.grey,
                        title: "Baseball Bat",
                        brand: "DeMarini",
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
                        image: TImages.productImage30,
                        sale: "24%",
                        color: Colors.red,
                        title: "MRF Virat Kohli Genius King Cricket Bat",
                        brand: "MRF",
                        price: "260.0",
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
