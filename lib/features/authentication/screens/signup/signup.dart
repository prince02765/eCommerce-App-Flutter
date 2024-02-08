import 'package:ecommerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_app/features/authentication/screens/signup/widget/signup_form.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupSceen extends StatelessWidget {
  const SignupSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Form
              SignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Divider
              TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              const SocialButtons(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
