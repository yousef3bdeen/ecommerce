import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/success_resetpassword_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_strings.dart';
import '../../../widget/auth/custom_button_auth.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImpl controller =
        Get.put(SuccessResetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(AppStringsKeys.success.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            Text(
              AppStringsKeys.congtatulationsKey.tr,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontSize: 30),
            ),
            Text(
              AppStringsKeys.successfullyResetPassword.tr,
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              width: double.infinity,
              child: CustomButtonAuth(
                text: AppStringsKeys.goToLogin.tr,
                onPressed: () {
                  controller.goToLogin();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
