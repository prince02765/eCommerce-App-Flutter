import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class TBillingAmountSection extends StatelessWidget {
  const TBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$245.5",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),

        // Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping Fee",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$6.0",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),

        // Tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tax Amount",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$4.5",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),

        // Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$256.0",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
      ],
    );
  }
}
