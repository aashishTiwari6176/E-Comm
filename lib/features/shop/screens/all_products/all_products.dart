import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            const TAppBar(title: Text('Popular Products'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Dropdown
                DropdownButtonFormField(
                  decoration:
                      const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                  onChanged: (value) {},
                  items: [
                    'Name',
                    'Higher Price',
                    'Lower Price',
                    'Sale',
                    'Newest',
                    'Popularity'
                  ]
                      .map((option) =>
                          DropdownMenuItem(value: option, child: Text(option)))
                      .toList(),
                ), // DropdownButtonFormField
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Products
                TGridLayout(
                    itemCount: 18,
                    itemBuilder: (_, index) => const TProductCardVertical())
              ],
// Column
            ),
// Padding
          ),
// SingleChildScrollView
        ));
  }
}
