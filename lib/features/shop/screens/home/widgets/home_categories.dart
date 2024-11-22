import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:t_store/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              image: TImages.darkAppLogo,
              title: 'Shoes',
              onTap: () {},
            );
          }),
    );
  }
}