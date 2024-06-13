import 'package:e_commerce_app/common/widgets/login_sinup/form_devider.dart';
import 'package:e_commerce_app/common/widgets/login_sinup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: dark ? const Color.fromARGB(255, 255, 0, 0) : TColors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const Tsignup_form(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              // divider
              TFormDevider(devidertext: TTexts.orSignInwith.capitalize!),
              //social buttons
              const SizedBox(
                height: TSizes.spaceBtwSections - 20,
              ),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
