import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:ecommerce_app/features/shop/screens/product_review/product_reviews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'widgets2/product_attributes2.dart';
import 'widgets2/product_image_slider2.dart';
import 'widgets2/product_meta_data2.dart';
import 'widgets6/product_attributes6.dart';
import 'widgets6/product_image_slider6.dart';
import 'widgets6/product_meta_data6.dart';

class ProductDetailsScreen6 extends StatelessWidget {
  const ProductDetailsScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Product Image Slider
            TProductImageSlider6(),

            // Product details
            Padding(
              padding: EdgeInsets.only(
                  right: TSizes.defaultSpace,
                  left: TSizes.defaultSpace,
                  bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Share button
                  TRatingAndShare(),

                  // Price, title, stock & brand
                  TProductMetadata6(),

                  // Attributes
                  TProductAttributes6(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text("Checkout")),
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),

                  // Description
                  TSectionHeading(
                    title: "Description",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  ReadMoreText(
                    "Nike Benassi JDI Men's Slide CASUAL COMFORT, SPORTY STYLE. The Nike Benassi JDI Slide is lightweight and sporty. It features the Nike logo on the foot strap, which is lined in soft fabric. Its foam midsole adds spring to your kicked-back style. One-piece, synthetic leather strap is lined with super soft, towel-like fabric.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: " Show More",
                    trimExpandedText: " Less",
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // Reviews
                  Divider(),
                  const SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(
                        title: "Review (199)",
                        showActionButton: false,
                      ),
                      IconButton(
                          onPressed: () => Get.to(() => ProductReviewsScreen()),
                          icon: Icon(
                            Iconsax.arrow_right_3,
                            size: 18,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
