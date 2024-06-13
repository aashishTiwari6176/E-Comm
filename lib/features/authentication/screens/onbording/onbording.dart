import 'package:e_commerce_app/features/authentication/controllers/onbording_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_page.dart';
import 'package:e_commerce_app/features/authentication/screens/onbording/widgets/onbording_skip.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBording1screen extends StatelessWidget {
  const OnBording1screen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnbordingController());
    return Scaffold(
      body: Stack(
        children: [
          //horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              Onbording(
                image: TImages.onBordingImage1,
                subtitle: TTexts.onBoardingSubTitle2,
                title: TTexts.onBoardingSubTitle1,
              ),
              Onbording(
                image: TImages.onBordingImage2,
                subtitle: TTexts.onBoardingSubTitle2,
                title: TTexts.onBoardingSubTitle2,
              ),
              Onbording(
                image: TImages.onBordingImage3,
                subtitle: TTexts.onBoardingSubTitle3,
                title: TTexts.onBoardingSubTitle3,
              )
            ],
          ),
          //skip button
          const OnbordingSkip(),
          //dot navigation smooth pageindicator
          const onbordingnavigation(),
          //circular Button
          const onbordingnextbotton()
        ],
      ),
    );
  }
}
