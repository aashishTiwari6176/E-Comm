// ignore_for_file: camel_case_types

import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/chackbox_and_termcondition.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class Tsignup_form extends StatelessWidget {
  const Tsignup_form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.LastName, prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        // user name
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //email
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //phone number
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        //password
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// terms&conditions chackbox
        const TCheckboxTermsAndCondition(),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        /// signup botton

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.to(const VerifyEmailScreen());
              },
              child: const Text(TTexts.createAccount)),
        ),
      ],
    ));
  }
}
