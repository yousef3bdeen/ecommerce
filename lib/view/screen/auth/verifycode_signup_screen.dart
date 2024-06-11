import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/core/constant/app_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_strings.dart';
import '../../../controller/auth/verifycode_signup_controller.dart';
import '../../../core/constant/image_assets.dart';
import '../../widget/auth/custom_text_body_auth.dart';
import '../../widget/auth/custom_text_title_auth.dart';
import '../../widget/auth/logoauth.dart';

class VerfyCodeSignUpScreen extends StatelessWidget {
  const VerfyCodeSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifyCodeSignupControllerImpl());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0,
        title: Text(AppStringsKeys.verfiCodeKey.tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColor.grey)),
      ),
      body: GetBuilder<VerifyCodeSignupControllerImpl>(
        builder: (controller) => controller.statusRequest ==
                StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.loading,
                    width: 250, height: 250))
            : Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: ListView(
                  children: [
                    const LogoAuth(),
                    CustomTextTitleAuth(text: AppStringsKeys.checkCodeKey.tr),
                    const SizedBox(height: AppHeight.h10),
                    CustomTextBodyAuth(
                        text: AppStringsKeys.textBodySignUpKey.tr),
                    const SizedBox(height: AppHeight.h15),
                    OtpTextField(
                      fieldWidth: 50,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      borderColor: Color(0xFF512DA8),
                      //set to true to show as box or false to show as dash
                      showFieldAsBox: true,
                      //runs when a code is typed in
                      onCodeChanged: (String code) {
                        //handle validation or checks here
                      },
                      //runs when every textfield is filled
                      onSubmit: (String verificationCode) {
                        controller.goToSuccessSignUp(verificationCode);
                      }, // end onSubmit
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
