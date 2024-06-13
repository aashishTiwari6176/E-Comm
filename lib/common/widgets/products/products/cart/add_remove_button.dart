import 'package:e_commerce_app/common/widgets/icon/t_circular_icon.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantityWithAddRemoveButton extends StatelessWidget {
  const TProductQuantityWithAddRemoveButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      TCircularIcon(
        icon: Iconsax.minus,
        width: 32,
        height: 32,
        size: TSizes.md,
        color: THelperFunctions.isDarkMode(context)
            ? TColors.white
            : TColors.black,
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
      ),
      const SizedBox(width: TSizes.spaceBtwItems),
      Text('2', style: Theme.of(context).textTheme.titleSmall),
      const SizedBox(width: TSizes.spaceBtwItems),
      const TCircularIcon(
        icon: Iconsax.add,
        width: 32,
        height: 32,
        size: TSizes.md,
        color: TColors.white,
        backgroundColor: TColors.primary,
      ),
    ]);
  }
}
