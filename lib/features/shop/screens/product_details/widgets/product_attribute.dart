import 'package:e_commerce_app/common/widgets/chips/choice_chips.dart';
import 'package:e_commerce_app/common/widgets/costom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/widgets/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_titel_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(children: [
      /// Selected Attribute Pricing & Description
      TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.md),
        backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
        child: Column(
          children: [
            /// Title, Price and Stock Staus
            Row(
              children: [
                const TSectionHeading(
                    title: "Variation", showActionButton: false),
                const SizedBox(width: TSizes.spaceBtwItems),
                Column(
                  children: [
                    Row(
                      children: [
                        /// Actual Price
                        const TProductTitleText(
                          title: 'price :',
                          smallSize: true,
                        ),
                        Text(
                          '\$25',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .apply(decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        //sale price
                        const TProductPriceText(price: '20'),
                      ],
                    ), // Row
                    Row(
                      children: [
                        const TProductTitleText(
                          title: "stock : ",
                        ),
                        Text(
                          "in stock",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),

            /// Variation Description

            const TProductTitleText(
              title:
                  "This is Description of the product and it can go up to max 4 Line",
              maxLines: 4,
            ),
          ],
        ),
      ),
      const SizedBox(width: TSizes.spaceBtwItems),

      //atributs
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TSectionHeading(title: 'Colors', showActionButton: false),
          const SizedBox(height: TSizes.spaceBtwItems / 2),
          Wrap(
            spacing: 8,
            children: [
              TChoiceChip(
                  text: 'Green', selected: false, onSelected: (value) {}),
              TChoiceChip(text: 'Blue', selected: true, onSelected: (value) {}),
              TChoiceChip(
                  text: 'Pink', selected: false, onSelected: (value) {}),
            ],
          ),
        ],
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const TSectionHeading(title: 'Size', showActionButton: false),
        const SizedBox(height: TSizes.spaceBtwItems / 2),
        Wrap(spacing: 8, children: [
          TChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
          TChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
          TChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
        ])
      ])
    ]);
  }
}
