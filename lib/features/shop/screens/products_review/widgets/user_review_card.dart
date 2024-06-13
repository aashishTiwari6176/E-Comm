import 'package:e_commerce_app/common/widgets/costom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/rating/rating_indicator.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(TImages.userprofileimage2)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ), // Row
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
//Review
        Row(
          children: [
            const TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ), // Row
        const SizedBox(height: TSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'showless',
          trimCollapsedText: 'showmore',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: TColors.primary),
        ), // ReadMoreText
        const SizedBox(height: TSizes.spaceBtwItems),

        /// Company Review
        TRoundedContainer(
            backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
            child: Padding(
              padding: const EdgeInsets.all(TSizes.md),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("T's Store",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text('02 Nov, 2023',
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ), // Row
                  const SizedBox(height: TSizes.spaceBtwItems),
                  const ReadMoreText(
                    'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job !',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'show less',
                    trimCollapsedText: 'show more',
                    moreStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: TColors.primary),
                    lessStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: TColors.primary),
                  ), //
                ],
              ), // Column
            )),

        const SizedBox(
          height: TSizes.spaceBtwSections,
        )
      ],
    );
  }
}
