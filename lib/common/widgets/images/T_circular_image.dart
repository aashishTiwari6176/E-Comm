// ignore_for_file: file_names

import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TcircularImage extends StatelessWidget {
  const TcircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlaycolor,
    this.backgroundcolor,
    this.width = 56,
    this.height = 56,
    this.padding = TSizes.sm,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlaycolor;
  final Color? backgroundcolor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: THelperFunctions.isDarkMode(context)
            ? TColors.black
            : TColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        fit: fit,
        image: isNetworkImage
            ? NetworkImage(image)
            : AssetImage(image) as ImageProvider,
        color: overlaycolor,
      ),
    );
  }
}
