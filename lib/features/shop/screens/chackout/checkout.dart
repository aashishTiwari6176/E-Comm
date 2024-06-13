import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/costom_shapes/container/rounded_container.dart';
// ignore: unused_import
import 'package:e_commerce_app/common/widgets/products/products/cart/cart_item.dart';
import 'package:e_commerce_app/common/widgets/products/products/cart/coupon_wedgets.dart';
import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_item.dart';
import 'package:e_commerce_app/features/shop/screens/chackout/widgets/biling_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/chackout/widgets/biling_amount_section.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/constants/image_string.dart';
import 'package:e_commerce_app/utility/constants/sizes.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
          showBackArrow: true,
          title: Text('Order Review',
              style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(children: [
                /// -- Items in Cart
                const TcartItems(
                  showactionbuttons: false,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Coupon TextField
                const TCouponCode(),
                const SizedBox(height: TSizes.spaceBtwSections),

// -- Billing Section
                TRoundedContainer(
                    showBorder: true,
                    padding: const EdgeInsets.all(TSizes.md),
                    backgroundColor: dark ? TColors.black : TColors.white,
                    child: const Column(children: [
                      /// Pricing
                      TBillingAmountSection(),
                      SizedBox(height: TSizes.spaceBtwItems),

//divider

                      Divider(),
                      SizedBox(height: TSizes.spaceBtwItems),

//address
                      TBillingAddressSection(),
                    ]))
              ]))),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: () => Get.to(() => SuccessScreen(
                  image: TImages.successfulPaymentIcon,
                  title: 'payment success',
                  subtitle: "your item will be shipped soon",
                  onpressed: () => Get.offAll(() => const NavigationMenu()),
                )),
            child: const Text("Checkout\$256.0")),
      ),
    );
  }
}
