import 'package:ecommerce_app/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class FrogotPasswordController extends GetxController {
  checkEmail();
  goToVerfiCode();
}

class FrogotPasswordControllerImpl extends FrogotPasswordController {
  late TextEditingController email;

  @override
  checkEmail() {
    // TODO: implement fotgotPassword
    throw UnimplementedError();
  }

  @override
  goToVerfiCode() {
   Get.offAllNamed(Routes.verfiyCode);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
