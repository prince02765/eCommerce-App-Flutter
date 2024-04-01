import 'package:ecommerce_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce_app/utils/constants/colors.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class TOrdersListItems3 extends StatelessWidget {
  const TOrdersListItems3({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: 1,
      separatorBuilder: (_, __) => SizedBox(
        height: TSizes.spaceBtwItems,
      ),
      itemBuilder: (_, index) => TRoundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.black : TColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // Icon
                Icon(Iconsax.ship),
                SizedBox(
                  width: TSizes.spaceBtwItems / 2,
                ),

                //Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Completed",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: TColors.primary, fontWeightDelta: 1),
                      ),
                      Text(
                        "14 Feb 2024",
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),

                // Icon
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.arrow_right_34,
                      size: TSizes.iconSm,
                    ))
              ],
            ),
            SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            // Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      Icon(Iconsax.tag),
                      SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),

                      //Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Order",
                                style:
                                    Theme.of(context).textTheme.labelMedium!),
                            Text(
                              "[#254f2]",
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      Icon(Iconsax.calendar),
                      SizedBox(
                        width: TSizes.spaceBtwItems / 2,
                      ),

                      //Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shipping Date",
                                style:
                                    Theme.of(context).textTheme.labelMedium!),
                            Text(
                              "20 Feb 2024",
                              style: Theme.of(context).textTheme.titleMedium,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
