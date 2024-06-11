import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_size.dart';
import 'package:ecommerce_app/core/function/valid_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/auth/signup_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_strings.dart';
import '../../../core/constant/image_assets.dart';
import '../../../core/function/alert_exit.dart';
import '../../widget/auth/custom_button_auth.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/custom_textform_auth.dart';
import '../../widget/auth/text_signup_signin.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(AppStringsKeys.signUpKey.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<SignUpControllerImpl>(
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
                        // const LogoAuth(),
                        CustomTextTitleAuth(
                            text: AppStringsKeys.welcomeBackKey.tr),
                        const SizedBox(height: AppHeight.h10),
                        CustomTextBodyAuth(
                            text: AppStringsKeys.textBodyLoginKey.tr),
                        const SizedBox(height: AppHeight.h15),
                        // --userName
                        CustomTextFormAuth(
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 15, "username");
                          },
                          hinttext: AppStringsKeys.enterUserNameKey.tr,
                          iconData: Icons.person,
                          labeltext: AppStringsKeys.userNameKey.tr,
                          mycontroller: controller.userName,
                        ),
                        // --email
                        CustomTextFormAuth(
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 50, "email");
                          },
                          hinttext: AppStringsKeys.enterEmailKey.tr,
                          iconData: Icons.email_outlined,
                          labeltext: AppStringsKeys.emailKey.tr,
                          mycontroller: controller.email,
                        ),
                        // --phone
                        CustomTextFormAuth(
                          isNumber: true,
                          valid: (val) {
                            return validInput(val!, 7, 20, "phone");
                          },
                          hinttext: AppStringsKeys.enterPhoneKey.tr,
                          iconData: Icons.phone,
                          labeltext: AppStringsKeys.phoneKey.tr,
                          mycontroller: controller.phone,
                        ),
                        // --password
                        CustomTextFormAuth(
                          obscureText: controller.isShowPassword,
                          onTapIcon: () {
                            controller.showPassword();
                          },
                          isNumber: false,
                          valid: (val) {
                            return validInput(val!, 5, 15, "password");
                          },
                          hinttext: AppStringsKeys.enterPasswordKey.tr,
                          iconData: Icons.lock_outline,
                          labeltext: AppStringsKeys.passwordKey.tr,
                          mycontroller: controller.password,
                        ),
                        Text(
                          AppStringsKeys.frogotPasswordKey.tr,
                          textAlign: TextAlign.end,
                        ),
                        CustomButtonAuth(
                          text: AppStringsKeys.signUpKey.tr,
                          onPressed: () {
                            controller.signUp();
                          },
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(AppStringsKeys.haveAccountKey.tr),
                            customTextSignUpOrSignIn(
                              text: AppStringsKeys.haveAccountKey.tr,
                              text2: AppStringsKeys.signInKey.tr,
                              onTap: () {
                                controller.goToLogin();
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
