import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widgets/coupones_list.dart';
import 'widgets/coupones_list2.dart';
import 'widgets/coupones_list3.dart';
import 'widgets/coupones_list4.dart';

class CouponesScreen extends StatelessWidget {
  const CouponesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: TAppBar(
        title: Text(
          "My Coupones",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),

          // Orders
          child: Column(
            children: [
              TCouponesListItems(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TCouponesListItems2(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TCouponesListItems3(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TCouponesListItems4(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
