import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_size.dart';
import '../../../core/constant/app_strings.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSize.s30),
      height: AppHeight.h40,
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s100),
        color: AppColor.primaryColor,
        textColor: Colors.white,
        onPressed: () {
          controller.next();
        },
        child:  Text(AppStringsKeys.continuKey.tr),
      ),
    );
  }
}
