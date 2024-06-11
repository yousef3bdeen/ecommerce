import 'package:get/get.dart';

import '../../routes.dart';

abstract class SuccessSignUpController extends GetxController{
  goToLogin();
}

class SuccessSignUpControllerImp extends SuccessSignUpController{
  @override
  goToLogin() {
    Get.offAllNamed(Routes.login);
  }

}