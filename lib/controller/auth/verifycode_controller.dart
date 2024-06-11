import 'package:ecommerce_app/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImpl extends VerifyCodeController {
  late String verifyCode;

  @override
  checkCode() {
    // TODO: implement fotgotPassword
    throw UnimplementedError();
  }

  @override
  goToResetPassword() {
    Get.offAllNamed(Routes.resetPassword);
  }

  @override
  void onInit() {
    super.onInit();
  }

 
}
