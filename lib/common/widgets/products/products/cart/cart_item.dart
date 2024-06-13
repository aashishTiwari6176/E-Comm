import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/Tbrand_title_text_withverifiedicon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_titel_text.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TcartItem extends StatelessWidget {
  const TcartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      /// Image
      TRoundedImage(
        imageUrl: TImages.productimage1,
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(TSizes.sm),
        backgroundColor: THelperFunctions.isDarkMode(context)
            ? TColors.darkerGrey
            : TColors.light,
      ),
// TRounded Image
      const SizedBox(width: TSizes.spaceBtwItems),

      /// Title, Price, & Size
      Expanded(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            const TBrandTitleWithVerifiedIcon(title: 'Nike'),
            const Flexible(
                child: TProductTitleText(
                    title: 'Black Sports shoes', maxLines: 1)),

            /// Attributes
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: 'Color',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08 ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            ))
          ]))
    ]);
  }
}
