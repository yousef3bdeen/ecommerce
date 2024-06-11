import 'package:ecommerce_app/core/constant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/resetpassword_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_strings.dart';
import '../../../../core/function/valid_input.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_title_auth.dart';
import '../../../widget/auth/custom_textform_auth.dart';
import '../../../widget/auth/logoauth.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => ResetPasswordControllerImpl());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0,
          title: Text(AppStringsKeys.resetPasswordKey.tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: AppColor.grey)),
        ),
        body: GetBuilder<ResetPasswordControllerImpl>(
          builder: (controller) => Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: ListView(
              children: [
                const LogoAuth(),
                CustomTextTitleAuth(text: AppStringsKeys.newPasswordKey.tr),
                const SizedBox(height: AppHeight.h10),
                CustomTextBodyAuth(text: AppStringsKeys.textBodySignUpKey.tr),
                const SizedBox(height: AppHeight.h15),
                CustomTextFormAuth(
                  obscureText: controller.isShowPassword,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 15, "password");
                  },
                  hinttext: AppStringsKeys.passwordKey.tr,
                  iconData: Icons.lock_outline,
                  labeltext: AppStringsKeys.enterPasswordKey.tr,
                  mycontroller: controller.password,
                ),
                CustomTextFormAuth(
                  obscureText: controller.isShowConfirmPassword,
                  onTapIcon: () {
                    controller.showConfirmPassword();
                  },
                  isNumber: false,
                  valid: (val) {
                    return validInput(val!, 5, 15, "password");
                  },
                  hinttext: AppStringsKeys.passwordConfirmKey.tr,
                  iconData: Icons.lock_outline,
                  labeltext: AppStringsKeys.passwordConfirmKey.tr,
                  mycontroller: controller.rePassword,
                ),
                CustomButtonAuth(
                  text: AppStringsKeys.saveKey.tr,
                  onPressed: () {
                    controller.goToSuccessResetPassword();
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ));
  }
}
