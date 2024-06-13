import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/costom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:e_commerce_app/common/widgets/icon/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return CurvedEdgesWidgets(
        child: Container(
      color: dark ? TColors.darkerGrey : TColors.light,
      child: Stack(children: [
        /// Main Large Image
        const SizedBox(
          height: 400,
          child: Padding(
            padding: EdgeInsets.all(TSizes.productImageRadius * 2),
            child:
                Center(child: Image(image: AssetImage(TImages.productimage2))),
          ), // Padding
        ),

        /// Image Slider
        Positioned(
          right: 8,
          bottom: 30,
          left: TSizes.defaultSpace,
          child: SizedBox(
            height: 88,
            child: ListView.separated(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              separatorBuilder: (_, __) =>
                  const SizedBox(width: TSizes.spaceBtwItems),
              itemBuilder: (_, index) => TRoundedImage(
                width: 88,
                backgroundColor: dark ? TColors.dark : TColors.white,
                border: Border.all(color: TColors.primary),
                padding: const EdgeInsets.all(TSizes.sm),
                imageUrl: TImages.productimage1,
              ), // TRounded Image
            ), // ListView.separated
          ),
        ),
// SizedBox
        /// Appbar Icons
        const TAppBar(
          showBackArrow: true,
          actions: [TCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
        ),
      ]),
    ));
  }
}
