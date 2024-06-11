import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_size.dart';
import 'package:ecommerce_app/view/widget/auth/text_signup_signin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/auth/login_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/image_assets.dart';
import '../../../core/function/alert_exit.dart';
import '../../../core/function/valid_input.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/custom_textform_auth.dart';
import '../../widget/auth/logoauth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(AppStringsKeys.signInKey.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImpl>(
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? Center(
                  child: Lottie.asset(AppImageAsset.loading,
                      width: 250, height: 250))
              : Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Form(
                    key: controller.formState,
                    child: ListView(
                      children: [
                        const LogoAuth(),
                        CustomTextTitleAuth(
                            text: AppStringsKeys.welcomeBackKey.tr),
                        const SizedBox(height: AppHeight.h10),
                        CustomTextBodyAuth(
                            text: AppStringsKeys.textBodySignUpKey.tr),
                        const SizedBox(height: AppHeight.h15),
                        // --email
                        CustomTextFormAuth(
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 100, "email");
                          },
                          hinttext: AppStringsKeys.enterEmailKey.tr,
                          iconData: Icons.email_outlined,
                          labeltext: AppStringsKeys.emailKey.tr,
                          mycontroller: controller.email,
                        ),
                        // --passwrod
                        CustomTextFormAuth(
                          obscureText: controller.isShowPassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 20, "password");
                          },
                          hinttext: AppStringsKeys.enterPasswordKey.tr,
                          iconData: Icons.lock_outline,
                          labeltext: AppStringsKeys.passwordKey.tr,
                          mycontroller: controller.password,
                        ),
                        InkWell(
                          onTap: () {
                            controller.goToForgotPassword();
                          },
                          child: Text(
                            AppStringsKeys.frogotPasswordKey.tr,
                            textAlign: TextAlign.end,
                          ),
                        ),
                        CustomButtonAuth(
                          text: AppStringsKeys.signInKey.tr,
                          onPressed: () {
                            controller.login();
                          },
                        ),
                        const SizedBox(height: 20),
                        customTextSignUpOrSignIn(
                          text: AppStringsKeys.dontHaveAccountKey.tr,
                          text2: AppStringsKeys.signUpKey.tr,
                          onTap: () {
                            controller.goToSignUp();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
