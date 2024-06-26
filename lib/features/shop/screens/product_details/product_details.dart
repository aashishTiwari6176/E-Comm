import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/buttom_add_to_cart.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_attribute.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:e_commerce_app/features/shop/screens/products_review/product_reviews.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Scaffold(
        bottomNavigationBar: const TBottomAddToCart(),
        body: SingleChildScrollView(
            child: Column(children: [
          /// 1 Product Image Slider
          const TProductImageSlider(),

          /// 2 Product Details
          Padding(
            padding: const EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                /// Rating & Share Button
                const TRatingAndShare(),

                /// Price, Title, Stock, & Brand
                const TProductMetaData(),

                /// -- Attributes
                const TProductAttributes(),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Checkout Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Checkout")),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                // Description
                const TSectionHeading(
                    title: 'Description', showActionButton: false),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added',
                  trimLines: 4,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Less',
                  moreStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ), //

                ///

                const Divider(),

                const SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const TSectionHeading(
                        title: 'Reviews (199)', showActionButton: false),
                    IconButton(
                      icon: const Icon(Iconsax.arrow_right_3, size: 18),
                      onPressed: () =>
                          Get.to(() => const ProductReviewsScreen()),
                    ),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
          ),
        ])));
  }
}
