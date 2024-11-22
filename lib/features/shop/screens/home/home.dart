import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:t_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const PrimaryHeaderContainer(
            child: Column(
              children: [
                // App Bar
                HomeAppBar(),
                SizedBox(height: TSizes.spaceBtwSections),

                // Search Bar
                SearchContainer(text: TTexts.searchInStore),
                SizedBox(height: TSizes.spaceBtwSections),

                // Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      // Heading
                      SectionHeading(
                        title: TTexts.popularCategories,
                        showActionButton: false,
                        textColor: TColors.white,
                      ),
                      SizedBox(height: TSizes.spaceBtwItems),

                      // Categories List
                      HomeCategories()
                    ],
                  ),
                )
              ],
            ),
          ),

          // Body
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Promo Slider
                const PromoSlider(
                  banner: [
                    TImages.promoBanner1,
                    TImages.promoBanner2,
                    TImages.promoBanner3
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwItems),

                // Heading
                SectionHeading(title: 'Popular Products', onPressed: (){},),
                const SizedBox(height: TSizes.spaceBtwItems),

                // Popular Products
                GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical(),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
