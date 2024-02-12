import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 't_brand_card.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    var dark = THelperFunctions.isDarkMode(context);

    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(TSizes.md),
      margin: EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brands with Product count
          TBrandCard(
            showBorder: false,
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          // Brand top 3 product image
          Row(
            children: images
                .map((image) => BrandTopProductWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget BrandTopProductWidget(String image, context) {
    var dark = THelperFunctions.isDarkMode(context);

    return Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: dark ? TColors.darkGrey : TColors.light,
        margin: EdgeInsets.only(right: TSizes.sm),
        padding: EdgeInsets.all(TSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
