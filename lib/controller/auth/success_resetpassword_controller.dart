import 'package:get/get.dart';

import '../../routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogin();
}

class SuccessResetPasswordControllerImpl
    extends SuccessResetPasswordController {
  @override
  goToLogin() {
    Get.offAllNamed(Routes.login);
  }
}
