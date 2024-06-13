import 'package:e_commerce_app/common/widgets/costom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TorderListItems extends StatelessWidget {
  const TorderListItems({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) =>
              const SizedBox(height: TSizes.spaceBtwItems),
          itemBuilder: (_, index) => TRoundedContainer(
              showBorder: true,
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  /// Row 1
                  Row(
                    children: [
                      /// 1 Icon
                      const Icon(Iconsax.ship),
                      const SizedBox(width: TSizes.spaceBtwItems / 2),

                      /// 2 Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Processing',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .apply(
                                      color: TColors.primary,
                                      fontWeightDelta: 1),
                            ),
                            Text('07 Nov 2024',
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ],
                        ),
                      ),

                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Iconsax.arrow_right_34,
                              size: TSizes.iconSm)),
                    ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  /// Row 1
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            /// 1 Icon
                            const Icon(Iconsax.ship),
                            const SizedBox(width: TSizes.spaceBtwItems / 2),

                            /// 2 Status & Date
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('order',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge),
                                  Text('[#256f2]',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            /// 1 Icon
                            const Icon(Iconsax.ship),
                            const SizedBox(width: TSizes.spaceBtwItems / 2),

                            /// 2 Status & Date
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('shopping date',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge),
                                  Text('03 feb 2025',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
