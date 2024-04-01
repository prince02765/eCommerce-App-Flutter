import 'package:ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:ecommerce_app/features/personalization/screens/address/address.dart';
import 'package:ecommerce_app/features/shop/screens/coupones/coupones.dart';
import 'package:ecommerce_app/features/shop/screens/notification/notification.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../shop/screens/checkout/checkout.dart';
import '../../../shop/screens/order/oder.dart';
import '../../../shop/screens/privacy/privacy.dart';
import '../profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            TPrimaryHeaderContainer(
                child: Column(
              children: [
                // AppBar
                TAppBar(
                  title: Text(
                    "Account",
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: TColors.white),
                  ),
                ),

                // User Profile card
                TUserProfileTile(
                  onPressed: () => Get.to(() => ProfileScreen()),
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // Use Profile Card
              ],
            )),
            // Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Settings
                  TSectionHeading(
                    title: "Account Settings",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: "My Address",
                    subTitle: "Set shopping delivery address",
                    onTap: () => Get.to(() => UserAddressScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: "My Cart",
                    subTitle: "Add, remove products and move to checkout",
                    onTap: () => Get.to(() => CheckoutScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: "My Orders",
                    subTitle: "In-proccess and Completed Orders",
                    onTap: () => Get.to(() => OrderScreen()),
                  ),
                  // TSettingsMenuTile(
                  //     icon: Iconsax.bank,
                  //     title: "Bank Account",
                  //     subTitle: "Withdrow balance to registered bank account"),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: "My Coupons",
                    subTitle: "List of all the discounted coupons",
                    onTap: () => Get.to(() => CouponesScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: "Notification",
                    subTitle: "Set any kind of notification message",
                    onTap: () => Get.to(() => NotificationScreen()),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: "Acount Privacy",
                    subTitle: "Manage data usage and conected accouts",
                    onTap: () => Get.to(() => PrivacyPolicyScreen()),
                  ),

                  // App Settings
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSectionHeading(
                    title: "App Settings",
                    showActionButton: false,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems,
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: "Geolocation",
                    subTitle: "Set recommendation based on location",
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: "Safe Mode",
                    subTitle: "Search result is safe for all ages",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: "HD Image Quality",
                    subTitle: "Set image quality to be seen",
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  // Logout Button
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () async {
                          _showLogoutDialog(context);
                        },
                        child: Text("Logout")),
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections * 2,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to logout?'),
          actions: <Widget>[
            OutlinedButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Get.offAll(LoginScreen());
              },
              child: Text('Yes'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('No'),
            ),
          ],
        );
      },
    );
  }
}
