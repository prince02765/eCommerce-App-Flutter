import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/texts/product_title.text.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: TAppBar(
        title: Text(
          "Privacy Policy",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TProductTitleText(
            title:
                "Privacy Policy for E-commerce App\n\nAt Digital Store, we prioritize the privacy and security of our users. This Privacy Policy outlines how we collect, use, disclose, and manage your personal information when you use our services. By accessing or using our app, you agree to the terms of this Privacy Policy.\n\n\nInformation We Collect:\n\nPersonal Information: When you register an account or make a purchase, we may collect personal information such as your name, email address, shipping address, and payment details.\n\nUsage Information: We gather information about how you interact with our app, including your browsing history, products viewed or purchased, and device information such as IP address, browser type, and operating system.\n\nCookies: We use cookies and similar tracking technologies to enhance your browsing experienceand personalize content. You can manage your cookie preferences through your browser settings.\n\n\nHow We Use Your Information:\n\nProvide Services: We use your personal information to process orders, facilitate payments, and deliver products to you\n\nPersonalization: We may use your information to tailor our services and recommendations to your preferences and interests.\n\nCommunication: We may send you transactional emails, such as order confirmations and shipping updates. You can opt out of promotional communications at any time\n\n",
            smallSize: false,
            maxLines: 5000,
          ),
        ),
      ),
    );
  }
}
