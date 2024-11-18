import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

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
                decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    labelStyle:
                        TextStyle(color: dark ? TColors.light : TColors.black),
                    floatingLabelStyle:
                        TextStyle(color: dark ? TColors.light : TColors.black),
                    prefixIcon: const Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    labelStyle:
                        TextStyle(color: dark ? TColors.light : TColors.black),
                    floatingLabelStyle:
                        TextStyle(color: dark ? TColors.light : TColors.black),
                    prefixIcon: const Icon(Iconsax.user)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: TTexts.username,
              labelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              floatingLabelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              prefixIcon: const Icon(Iconsax.user_edit)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: TTexts.email,
              labelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              floatingLabelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              prefixIcon: const Icon(Iconsax.direct_right)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              labelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              floatingLabelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              prefixIcon: const Icon(Iconsax.direct)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: TTexts.password,
              labelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              floatingLabelStyle:
                  TextStyle(color: dark ? TColors.light : TColors.black),
              prefixIcon: const Icon(Iconsax.password_check),
              suffixIcon: const Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        // Terms and condition checkbox
        Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(value: true, onChanged: (value) {}),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: TTexts.isAgreeTo,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.textWhite : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? TColors.textWhite : TColors.primary)),
              TextSpan(
                  text: TTexts.and,
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: TTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TColors.textWhite : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? TColors.textWhite : TColors.primary)),
            ]))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const VerifyEmailScreen()),
            child: const Text(TTexts.createAccount),
          ),
        ),
      ],
    ));
  }
}
