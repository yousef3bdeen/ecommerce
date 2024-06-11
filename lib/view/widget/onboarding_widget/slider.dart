import 'package:ecommerce_app/controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_size.dart';
import '../../../data/data_source/static/static.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImpl> {
  const CustomSliderOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(height: AppHeight.h20),
          Text(
            onBoardingList[index].title!,
            style: const TextStyle(
                fontSize: AppSize.s22,
                fontWeight: FontWeight.bold,
                color: AppColor.black),
          ),
          const SizedBox(height: AppHeight.h60),
          Image.asset(
            onBoardingList[index].image!,
            width: 200,
            height: 230,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: AppHeight.h40),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onBoardingList[index].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2, color: AppColor.grey, fontSize: AppSize.s18),
            ),
          ),
        ],
      ),
    );
  }
}
