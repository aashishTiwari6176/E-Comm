import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brands/brand_card.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/brand/brand_product.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TAppBar(title: Text('Brand'), showBackArrow: true),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                /// Heading
                const TSectionHeading(title: 'Brands', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),

                /// -- Brands
                TGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => TBrandCard(
                    showBorder: true,
                    ontap: () => Get.to(() => const BrandProducts()),
                  ),
                ), // TGridLayout
              ],
            ), // Column
          ), // Padding
        )); // Scaffold
  }
}
