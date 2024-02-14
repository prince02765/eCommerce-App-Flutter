import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce_app/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Popular Products"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
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
                      .map((options) => DropdownMenuItem(
                          value: options, child: Text(options)))
                      .toList(),
                  onChanged: (value) {}),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Products
              TGridLayout(
                  itemCount: 10,
                  itemBuilder: (_, index) => TProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
