import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/features/shop/screens/order/widgets/orders_list.dart';
import 'package:ecommerce_app/features/shop/screens/order/widgets/orders_list2.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'widgets/orders_list3.dart';
import 'widgets/orders_list4.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: TAppBar(
        title: Text(
          "My Orders",
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
              TOrdersListItems(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TOrdersListItems2(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TOrdersListItems3(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TOrdersListItems4(),
            ],
          ),
        ),
      ),
    );
  }
}
