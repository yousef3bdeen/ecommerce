import 'package:ecommerce_app/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;

  bool isShowPassword = true;

  showPassword() {
    isShowPassword = !isShowPassword;
    update();
  }
  
  bool isShowConfirmPassword = true;

  showConfirmPassword() {
    isShowConfirmPassword = !isShowConfirmPassword;
    update();
  }

  @override
  resetPassword() {
    // TODO: implement fotgotPassword
    throw UnimplementedError();
  }

  @override
  goToSuccessResetPassword() {
   Get.offAllNamed(Routes.successResetPassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
