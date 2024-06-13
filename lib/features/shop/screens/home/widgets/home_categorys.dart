import 'package:e_commerce_app/common/widgets/images_text_widgets/vertical_image.dart';
import 'package:e_commerce_app/features/shop/screens/sub_categories/sub_categories.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class THomecategorys extends StatelessWidget {
  const THomecategorys({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 6,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return TVerticalImageText(
            image: TImages.shoeIcon,
            title: 'shoes_foryou',
            onTap: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
