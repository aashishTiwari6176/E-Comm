import 'package:e_commerce_app/common/widgets/costom_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/costom_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/products_cards/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/Home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categorys.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const PrimaryHeaderContainer(
              child: Column(
            children: [
              // home aapbar
              THomeAppbar(),
              //sarchbar
              TSearchContainer(text: 'sarch in store'),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //category
              Padding(
                padding: EdgeInsets.only(left: TSizes.defaultSpace),
                child: Column(
                  children: [
                    //heading
                    TSectionHeading(
                      title: 'Popular Categories',
                      showActionButton: false,
                      textColor: Colors.white,
                    ),
                    SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),

                    //categoies
                    THomecategorys(),
                  ],
                ),
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              )
            ],
          )),
          //body --tutorial
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                const TPromoSlider(banners: [
                  TImages.promoBanner1,
                  TImages.promoBanner2,
                  TImages.promoBanner3
                ]),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),
                // heading
                TSectionHeading(
                  title: 'Popular products',
                  onPressed: () => Get.to(() => const AllProducts()),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                //popular products
                TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical(),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
