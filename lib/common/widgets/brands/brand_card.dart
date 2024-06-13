import 'package:e_commerce_app/common/widgets/costom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/T_circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/Tbrand_title_text_withverifiedicon.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/enums.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    required this.showBorder,
    this.ontap,
  });
  final bool showBorder;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: TcircularImage(
                image: TImages.clothIcon,
                isNetworkImage: false,
                backgroundcolor: Colors.transparent,
                overlaycolor: THelperFunctions.isDarkMode(context)
                    ? TColors.white
                    : TColors.dark,
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TBrandTitleWithVerifiedIcon(
                    title: 'nick',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '256 products  jkbnljnlnlnnh',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
