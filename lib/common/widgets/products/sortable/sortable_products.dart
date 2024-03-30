import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/verticals/product_card_vertical1.dart';
import '../product_cards/verticals/product_card_vertical2.dart';
import '../product_cards/verticals/product_card_vertical3.dart';
import '../product_cards/verticals/product_card_vertical4.dart';
import '../product_cards/verticals/product_card_vertical5.dart';
import '../product_cards/verticals/product_card_vertical6.dart';

class TSortableProducts extends StatelessWidget {
  const TSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              "Name",
              "Higher Price",
              "Lower Price",
              "Sale",
              "Newest",
              "Popularity"
            ]
                .map((options) =>
                    DropdownMenuItem(value: options, child: Text(options)))
                .toList(),
            onChanged: (value) {}),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        // Products
        TGridLayout(
          itemCount: 2,
          itemBuilder: (_, index) => const TProductCardVertical(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TGridLayout(
          itemCount: 2,
          itemBuilder: (_, index) => const TProductCardVertical2(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TGridLayout(
          itemCount: 2,
          itemBuilder: (_, index) => const TProductCardVertical3(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TGridLayout(
          itemCount: 2,
          itemBuilder: (_, index) => const TProductCardVertical4(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TGridLayout(
          itemCount: 2,
          itemBuilder: (_, index) => const TProductCardVertical5(),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        TGridLayout(
          itemCount: 2,
          itemBuilder: (_, index) => const TProductCardVertical6(),
        ),
      ],
    );
  }
}
