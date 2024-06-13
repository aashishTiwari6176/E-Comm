import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Onbording extends StatelessWidget {
  const Onbording({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              height: THelperFunctions.screenHeight() * 0.6,
              width: THelperFunctions.screenWidth() * 0.8,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
