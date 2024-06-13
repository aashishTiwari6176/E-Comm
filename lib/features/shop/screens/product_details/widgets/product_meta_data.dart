import 'package:e_commerce_app/common/widgets/costom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/T_circular_image.dart';
import 'package:e_commerce_app/common/widgets/products/widgets/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/Tbrand_title_text_withverifiedicon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_titel_text.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/enums.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      /// Price & Sale Price
      Row(children: [
        /// Sale Tag
        TRoundedContainer(
          radius: TSizes.sm,
          backgroundColor: TColors.secondary.withOpacity(0.8),
          padding: const EdgeInsets.symmetric(
              horizontal: TSizes.sm, vertical: TSizes.xs),
          child: Text('25%',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: TColors.black)),
        ),
// TRoundedContainer
        const SizedBox(width: TSizes.spaceBtwItems),

        /// Price
        Text('\$250',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .apply(decoration: TextDecoration.lineThrough)),
        const SizedBox(width: TSizes.spaceBtwItems),
        const TProductPriceText(
          price: '175',
          isLarge: true,
        ),
      ]),

      /// Title
      const TProductTitleText(title: 'Green Nike Sports Shirt'),
      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

      /// Stock Status
      Row(
        children: [
          const TProductTitleText(title: 'Status'),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
//
        ],
      ),

      const SizedBox(height: TSizes.spaceBtwItems / 1.5),

      ///Brand
      Row(children: [
        TcircularImage(
          image: TImages.shoeIcon,
          width: 32,
          height: 32,
          overlaycolor: darkMode ? TColors.white : TColors.black,
        ),
// TCircularImage
        const TBrandTitleWithVerifiedIcon(
            title: 'Nike', brandTextSize: TextSizes.medium),
      ]),
    ]);
  }
}
