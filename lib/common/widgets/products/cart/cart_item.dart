import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../images/t_rounded_image.dart';
import '../../texts/product_title.text.dart';
import '../../texts/t_brand_title_with_verification_icon.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        // Image
        TRoundedImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkGrey : TColors.light,
        ),
        SizedBox(
          width: TSizes.spaceBtwItems,
        ),

        // Title, Price & Size
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TBrandTitleWithVerificationIcon(title: "Nike"),
            Flexible(
                child: TProductTitleText(
              title: "Black Sports shoes",
              maxLines: 1,
            )),

            // Atributes
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "Color", style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: "Green", style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: "Size", style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: "UK 08", style: Theme.of(context).textTheme.bodyLarge),
            ]))
          ],
        ))
      ],
    );
  }
}
