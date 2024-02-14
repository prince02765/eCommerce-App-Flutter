import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

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
            itemCount: 10, itemBuilder: (_, index) => TProductCardVertical())
      ],
    );
  }
}
