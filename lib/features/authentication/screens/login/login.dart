import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/style/spacing_styles.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_button.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Header
              TLoginHeader(dark: dark),

              // Form
              TLoginForm(dark: dark),

              // Divider
              TFormDivider(dark: dark, dividerText: TTexts.orSignInWith.capitalize!,),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // Footer
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}