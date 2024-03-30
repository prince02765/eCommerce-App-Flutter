import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title.text.dart';
import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class TProductAttributes4 extends StatelessWidget {
  const TProductAttributes4({super.key});

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
                            "\$34",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),

                          // Sale Price
                          TProductPriceText(price: "20"),
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
                    "Everything you like about 512 Slim, but updated with a narrow fit through the thigh and tapered leg for the fashion-forward guy.",
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
                  text: "Black",
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "Blue",
                  selected: true,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "Indigo",
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
                  selected: false,
                  onSelected: (value) {},
                ),
                TChoiceChip(
                  text: "L",
                  selected: true,
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
