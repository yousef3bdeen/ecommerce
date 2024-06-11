import 'package:ecommerce_app/core/class/status_request.dart';
import 'package:ecommerce_app/data/data_source/remote/auth/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/function/handlingdatacontroller.dart';
import '../../routes.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgotPassword();
}

class LoginControllerImpl extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;

  bool isShowPassword = true;

  StatusRequest? statusRequest;

  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }

  @override
  login() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postData(email.text, password.text);

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offAllNamed(Routes.home);
        } else {
          Get.defaultDialog(
              title: 'Warning', middleText: "Email Or Password Invalid");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToSignUp() {
    Get.offAllNamed(Routes.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgotPassword() {
    Get.toNamed(Routes.frogotPassword);
  }
}
