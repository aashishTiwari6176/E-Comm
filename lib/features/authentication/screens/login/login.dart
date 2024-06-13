import 'package:e_commerce_app/common/style/spacing_styles.dart';
import 'package:e_commerce_app/common/widgets/login_sinup/form_devider.dart';
import 'package:e_commerce_app/common/widgets/login_sinup/social_button.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/Login_header.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/loginform.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScrren extends StatelessWidget {
  const LoginScrren({super.key});

  @override
  Widget build(BuildContext context) {
    THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingstyle.paddingWithappbarheight,
          child: Column(
            children: [
              /// logo title and sub title

              const Loginheader(),

              ///form

              const LoginForm(),
              //divider
              TFormDevider(devidertext: TTexts.orSignInwith.capitalize!),
              const SizedBox(
                width: TSizes.spaceBtwSections,
              ),
              //foter
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
