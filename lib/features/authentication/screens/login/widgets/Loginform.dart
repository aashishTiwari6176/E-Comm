// ignore_for_file: file_names

import 'package:e_commerce_app/features/authentication/screens/password_confrigation/forget_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword)),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const NavigationMenu()),
                  child: const Text(TTexts.signin))),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(const Signupscreen());
                  },
                  child: const Text(TTexts.createAccount))),
        ],
      ),
    ));
  }
}
