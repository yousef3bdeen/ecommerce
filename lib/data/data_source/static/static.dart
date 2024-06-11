import 'package:get/get.dart';

import '../../../core/constant/app_strings.dart';
import '../../../core/constant/image_assets.dart';
import '../../model/onboarding_model.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: AppStringsKeys.onboardingTitle1Key.tr,
    image: AppImageAsset.onBoardingImageOne,
    body:AppStringsKeys.onboardingBody1Key.tr,
  ),
  OnBoardingModel(
    title: AppStringsKeys.onboardingTitle2Key.tr,
    image: AppImageAsset.onBoardingImageTwo,
    body:AppStringsKeys.onboardingBody2Key.tr,
  ),
  OnBoardingModel(
    title: AppStringsKeys.onboardingTitle3Key.tr,
    image: AppImageAsset.onBoardingImageThree,
    body:AppStringsKeys.onboardingBody3Key.tr,
  ),
  OnBoardingModel(
    title: AppStringsKeys.onboardingTitle4Key.tr,
    image: AppImageAsset.onBoardingImageFour,
    body:AppStringsKeys.onboardingBody4Key.tr,
  ),
];
