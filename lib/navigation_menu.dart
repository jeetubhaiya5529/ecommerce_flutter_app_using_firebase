import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/personalization/screens/settings/settings.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/features/shop/screens/store/store.dart';
import 'package:t_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunction.isDarkMode(context);

    return Scaffold(
        bottomNavigationBar: Obx(
          () => NavigationBar(
            backgroundColor: dark ? TColors.black : Colors.white,
            indicatorColor: dark
                ? TColors.textWhite.withOpacity(0.1)
                : TColors.black.withOpacity(0.1),
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.shop),
                label: 'Store',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.heart),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.user),
                label: 'Profile',
              )
            ],
          ),
        ),
        body: Obx(
          () => controller.screens[controller.selectedIndex.value],
        ));
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
}
