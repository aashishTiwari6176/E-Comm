import 'package:e_commerce_app/features/authentication/controllers/onbording_controller.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:flutter/material.dart';

class OnbordingSkip extends StatelessWidget {
  const OnbordingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: kToolbarHeight,
        right: TSizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnbordingController.instance.skipPage(),
            child: const Text("skip")));
  }
}
