import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';

import 'package:e_commerce_app/common/widgets/products/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';
import 'package:flutter/material.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .apply(color: TColors.white),
          ),
        ],
      ),
      actions: [TCartCounterIcon(onpressed: () {}, iconcolor: TColors.white)],
    );
  }
}
