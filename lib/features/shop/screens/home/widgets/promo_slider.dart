import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/costom_shapes/container/circular_container.dart';
import 'package:e_commerce_app/common/widgets/images/t_rounded_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({
    super.key,
    required this.banners,
  });
  final List<String> banners;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, _) => controller.updatepageindicator(index),
        ),
        items: banners.map((url) => TRoundedImage(imageUrl: url)).toList(),
      ),
      // const [
      //   TRoundedImage(imageUrl: TImages.promoBanner1),
      //   TRoundedImage(imageUrl: TImages.promoBanner2),
      //   TRoundedImage(imageUrl: TImages.promoBanner3),
      //
      // ]),
      const SizedBox(height: TSizes.spaceBtwItems),
      Center(
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                TCircularcontainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundcolor: controller.CarousalCurrentIndex.value == i
                      ? TColors.primary
                      : TColors.grey,
                ),
            ],
          ),
        ),
      ),
    ]);
  }
}
