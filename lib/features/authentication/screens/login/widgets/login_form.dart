import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Iconsax.direct_right,
              ),
              labelText: TTexts.email,
              labelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              floatingLabelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Iconsax.password_check,
              ),
              labelText: TTexts.password,
              labelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              floatingLabelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              suffixIcon: const Icon(Iconsax.eye_slash),
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
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe),
                ],
              ),
              TextButton(
                onPressed: () => Get.to(() => const ForgetPassword()),
                child: Text(
                  TTexts.forgetPasswordTitle,
                  style: TextStyle(color: dark ? TColors.light : TColors.black),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(TTexts.signin),
            ),
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => Get.to(() => const SignupScreen()),
              child: Text(
                TTexts.createAccount,
                style: TextStyle(color: dark ? TColors.light : TColors.black),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
