import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/images/t_circular_image.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    TCircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("Change Profile Picture")),
                  ],
                ),
              ),

              // Details
              SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              TSectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TProfileMenu(
                title: "Name",
                value: "Agevole",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Username",
                value: "agevole_123",
                onPressed: () {},
              ),

              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              // Heading - Personal Info
              TSectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              TProfileMenu(
                title: "User ID",
                value: "46256",
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              TProfileMenu(
                title: "E-mail",
                value: "user@gmail.com",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Phone Number",
                value: "+91 99999 88888",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Gender",
                value: "Mal",
                onPressed: () {},
              ),
              TProfileMenu(
                title: "Date of Birth",
                value: "10 Aug 2000",
                onPressed: () {},
              ),
              Divider(),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Close Account",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
