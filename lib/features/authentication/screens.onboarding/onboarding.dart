import 'package:ecommerce_app/features/authentication/controller.onboarding/onboarding_controller.dart';
import 'package:ecommerce_app/features/authentication/screens.onboarding/widgets/onboarding_dot_nav.dart';
import 'package:ecommerce_app/features/authentication/screens.onboarding/widgets/onboarding_next_button.dart';
import 'package:ecommerce_app/features/authentication/screens.onboarding/widgets/onboarding_page.dart';
import 'package:ecommerce_app/features/authentication/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:ecommerce_app/utils/constants/image_strings.dart';
import 'package:ecommerce_app/utils/constants/sizes.dart';
import 'package:ecommerce_app/utils/constants/text_strings.dart';
import 'package:ecommerce_app/utils/device/device_utility.dart';
import 'package:ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          OnBoardingSkip(),
          OnBoardDotNavigation(),
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
