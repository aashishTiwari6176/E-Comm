import 'package:e_commerce_app/common/style/shadows.dart';
import 'package:e_commerce_app/common/widgets/costom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icon/t_circular_icon.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/widgets/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/Tbrand_title_text_withverifiedicon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_titel_text.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            //tumbail,wishbutton,discounttag
            TRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  const TRoundedImage(
                    imageUrl: TImages.productimage1,
                    applyImageRadius: true,
                  ),
                  //saletage
                  Positioned(
                    top: 12,
                    child: TRoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: TColors.black),
                      ),
                    ),
                  ),

                  // // favoraite icon button
                  // Container(
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(100),
                  //      color: dark
                  //       ? TColors.black.withOpacity(0.9)
                  //       : TColors.white.withOpacity(0.9),
                  //   ),

                  //   child: IconButton(onPressed: () {

                  //   }, icon:Icon(Iconsax.heart5),
                  // ),

                  // ),

                  const Positioned(
                      top: 0,
                      right: 0,
                      child: TCircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ))
                ],
              ),
            ),

            const SizedBox(height: TSizes.spaceBtwItems / 2),
            //--detail
            const Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(children: [
                TProductTitleText(
                  title: 'nike air shoes',
                  smallSize: true,
                ),
                SizedBox(height: TSizes.spaceBtwItems / 2),
                TBrandTitleWithVerifiedIcon(title: 'nick'),
              ]),
            ),
            //spacer height of each box same //price row
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TProductPriceText(price: '35.0'),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child:
                        Center(child: Icon(Iconsax.add, color: TColors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
