import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/common/widgets/images/t_circular_image.dart';
import 'package:ecommerce_app/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce_app/common/widgets/texts/product_title.text.dart';
import 'package:ecommerce_app/common/widgets/texts/t_brand_title_with_verification_icon.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/enums.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TProductMetadata2 extends StatelessWidget {
  const TProductMetadata2({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & sale Tag
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: EdgeInsets.symmetric(
                  horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                "15%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),

            // Price
            Text(
              "\$55",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            TProductPriceText(
              price: "28",
              isLarge: true,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        // Title
        TProductTitleText(title: "White Nike Air Shoes"),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        // Stock Status
        Row(
          children: [
            TProductTitleText(title: "Status"),
            const SizedBox(
              width: TSizes.spaceBtwItems / 1.5,
            ),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        // Brand
        Row(
          children: [
            TCircularImage(
              image: TImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            TBrandTitleWithVerificationIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
