// ignore_for_file: file_names

import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';
import 'package:flutter/material.dart';

class Loginheader extends StatelessWidget {
  const Loginheader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(height: 100, image: AssetImage(TImages.darkAppLogo)),
        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.LoginSubTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
