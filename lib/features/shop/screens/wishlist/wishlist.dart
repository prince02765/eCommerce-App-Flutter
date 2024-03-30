import '../../../../common/widgets/icons/circular_icon.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical1.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical2.dart';
import '../../../../common/widgets/products/product_cards/verticals/product_card_vertical6.dart';
import '../home/home.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TGridLayout(
                  itemCount: 2,
                  itemBuilder: (_, index) => const TProductCardVertical2()),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TGridLayout(
                itemCount: 2,
                itemBuilder: (_, index) => const TProductCardVertical6(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
