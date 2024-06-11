import 'package:ecommerce_app/core/constant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/fotgotpassword_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_strings.dart';
import '../../../../core/function/valid_input.dart';
import '../../../widget/auth/custom_button_auth.dart';
import '../../../widget/auth/custom_text_body_auth.dart';
import '../../../widget/auth/custom_text_title_auth.dart';
import '../../../widget/auth/custom_textform_auth.dart';
import '../../../widget/auth/logoauth.dart';

class FrogotPasswordScreen extends StatelessWidget {
  const FrogotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FrogotPasswordControllerImpl controller =
        Get.put(FrogotPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(AppStringsKeys.frogotPasswordKey.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(
          children: [
            const LogoAuth(),
            CustomTextTitleAuth(text: AppStringsKeys.checkEmailKey.tr),
            const SizedBox(height: AppHeight.h10),
            CustomTextBodyAuth(text: AppStringsKeys.textBodySignUpKey.tr),
            const SizedBox(height: AppHeight.h15),
            // --emial
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

            CustomButtonAuth(
              text: AppStringsKeys.checkKey.tr,
              onPressed: () {
                controller.goToVerfiCode();
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
