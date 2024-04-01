import 'package:ecommerce_app/common/widgets/appbar/appbar.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: TAppBar(
        title: Text(
          "Notifications",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        showBackArrow: true,
      ),
      body: TSettingsMenuTile(
        icon: Iconsax.notification,
        title: "Allow Notifications",
        subTitle: "Get notify when new products is arrived.",
        trailing: Switch(value: true, onChanged: (value) {}),
      ),
    );
  }
}
