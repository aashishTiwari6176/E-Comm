import 'package:e_commerce_app/common/widgets/products/products/cart/add_remove_button.dart';
import 'package:e_commerce_app/common/widgets/products/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/products/widgets/product_price_text.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';

class TcartItems extends StatelessWidget {
  const TcartItems({super.key, this.showactionbuttons = true});

  final bool showactionbuttons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 2,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(children: [
              const TcartItem(),
              if (showactionbuttons)
                const SizedBox(height: TSizes.spaceBtwItems),
              if (showactionbuttons)
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        /// Extra Space
                        SizedBox(width: 70),

                        /// Add Remove Buttons
                        TProductQuantityWithAddRemoveButton(),
                      ],
                    ), // Row
                    TProductPriceText(price: '256'),
                  ],
                )
            ]));
  }
}
