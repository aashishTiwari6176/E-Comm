import 'package:e_commerce_app/features/personalization/screens/settings/setting.dart';
import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/features/shop/screens/store/store.dart';
import 'package:e_commerce_app/features/shop/screens/wishlist/wishlist.dart';
import 'package:e_commerce_app/utility/constants/colors.dart';
import 'package:e_commerce_app/utility/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = Get.put(Navigationcontroller());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (value) =>
                controller.selectedIndex.value = value,
            backgroundColor: dark ? TColors.black : TColors.white,
            indicatorColor: dark
                ? Colors.white.withOpacity(0.1)
                : TColors.black.withOpacity(0.1),
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "text"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "profile"),
            ]),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class Navigationcontroller extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screen = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
