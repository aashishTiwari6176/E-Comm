import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/products/sortable/sortable_product.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: TAppBar(title: Text('Nike')),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// Brand Detail
                    TBrandCard(showBorder: true),
                    SizedBox(height: TSizes.spaceBtwSections),
                    TSortableProducts(),
                  ],
                ))));
  }
}
