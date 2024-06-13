import 'package:e_commerce_app/features/authentication/controllers/onbording_controller.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/device/device_utility.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onbordingnavigation extends StatelessWidget {
  const onbordingnavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnbordingController.instance;
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            onDotClicked: controller.dotNavigationClick,
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? TColors.light : TColors.dark,
                dotHeight: 6)));
  }
}
