import 'package:ecommerce_app/core/constant/app_size.dart';
import 'package:ecommerce_app/core/constant/app_strings.dart';
import 'package:ecommerce_app/core/localization/change_local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes.dart';
import '../widget/language_widget/custome_button_lang.dart';

class LanguageScreen extends GetView<LocaleController> {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(AppSize.s14),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(AppStringsKeys.chooseLanguageKey.tr, style: Theme.of(context).textTheme.headlineLarge),
              const SizedBox(height: AppHeight.h20),
              CustomButtonLang(
                textButton: 'Ar',
                onPressed: () {
                  controller.changeLang("ar");
                  Get.toNamed(Routes.onboarding);
                },
              ),
              CustomButtonLang(
                textButton: 'En',
                onPressed: () {
                  controller.changeLang("en");
                  Get.toNamed(Routes.onboarding);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
