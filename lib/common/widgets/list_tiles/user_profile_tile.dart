import 'package:e_commerce_app/common/widgets/images/T_circular_image.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
    required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TcircularImage(
          image: TImages.user, width: 58, height: 50, padding: 8),
      title: Text("Coding with T",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white)),
      subtitle: Text('support@codingwithT.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: TColors.white)),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.edit, color: TColors.white)),
    ); // ListTile
  }
}
