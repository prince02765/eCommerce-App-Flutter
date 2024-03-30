import 'package:ecommerce_app/common/widgets/texts/section_heading.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../personalization/controller/user_controller.dart';

class TBillingAddressSection extends StatelessWidget {
  const TBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text(
          controller.user.value.fullName,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(controller.user.value.phoneNumber,
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text(
                "8809 Gorczany Unions, East Cyndy, IL 04697 USA",
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
