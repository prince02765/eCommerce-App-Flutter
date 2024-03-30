import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title.text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes5 extends StatelessWidget {
  const TProductAttributes5({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkGrey : TColors.grey,
          child: Column(
            children: [
              // Title, Price & Stock status
              Row(
                children: [
                  TSectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  const SizedBox(
                    width: TSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TProductTitleText(
                            title: "Price : ",
                            smallSize: true,
                          ),
                          // Actual Price
                          Text(
                            "\$26",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          // Sale Price
                          TProductPriceText(price: "14"),
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          TProductTitleText(
                            title: "Stock : ",
                            smallSize: true,
                          ),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Variation Description
              TProductTitleText(
                title:
                    "Crafted from premium, heavyweight knit fabric, this short-sleeve top from our Nike.",
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(
              title: "Colors",
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: "Blue",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "Black",
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "White",
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(
              title: "Size",
              showActionButton: false,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: "S",
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "M",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "L",
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "XL",
                  selected: false,
                  onSelected: (value) {},
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
