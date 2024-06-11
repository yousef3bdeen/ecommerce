import 'package:ecommerce_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../data/data_source/remote/auth/signup_data.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToLogin();
}

class SignUpControllerImpl extends SignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController userName;
  late TextEditingController phone;
  late TextEditingController email;
  late TextEditingController password;

  bool isShowPassword = true;

  StatusRequest? statusRequest;

  SignUpData signUpData = SignUpData(Get.find());

  List data = [];

  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }

  @override
  signUp() async {
    if (formState.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signUpData.postData(
          userName.text, password.text, email.text, phone.text);

      statusRequest = handlingData(response);

      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offAllNamed(Routes.verfiySignUpCode,arguments: {
            'email': email.text,
          });
        } else {
          Get.defaultDialog(
              title: 'Warning',
              middleText: "Phone Number Or Email Already Exists");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  goToLogin() {
    Get.offAllNamed(Routes.login);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
