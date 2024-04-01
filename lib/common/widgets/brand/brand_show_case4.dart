import 'package:ecommerce_app/common/widgets/brand/t_brand_card4.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 't_brand_card.dart';

class TBrandShowcase4 extends StatelessWidget {
  const TBrandShowcase4({
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
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brands with Product count
          const TBrandCard4(
            showBorder: false,
          ),
          const SizedBox(
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
        margin: const EdgeInsets.only(right: TSizes.sm),
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(
          fit: BoxFit.contain,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
