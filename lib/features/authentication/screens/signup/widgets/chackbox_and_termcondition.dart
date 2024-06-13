import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/text_string.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TCheckboxTermsAndCondition extends StatelessWidget {
  const TCheckboxTermsAndCondition({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${TTexts.Agreete} ',
                style: Theme.of(context).textTheme.bodyMedium),
            TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    )),
            TextSpan(
                text: '${TTexts.and}  ',
                style: Theme.of(context).textTheme.bodyMedium),
            TextSpan(
                text: '${TTexts.termsofuse} ',
                style: Theme.of(context).textTheme.labelSmall!.apply(
                      color: dark ? TColors.white : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? TColors.white : TColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
