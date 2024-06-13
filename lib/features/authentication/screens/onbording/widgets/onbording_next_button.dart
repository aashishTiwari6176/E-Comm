import 'package:e_commerce_app/features/authentication/controllers/onbording_controller.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/device/device_utility.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class onbordingnextbotton extends StatelessWidget {
  const onbordingnextbotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
          onPressed: () => OnbordingController.instance.nextpage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? TColors.primary : Colors.black),
          child: const Icon(
            Iconsax.arrow_circle_right4,
            color: Colors.white,
          )),
    );
  }
}
