import 'package:ecommerce_app/routes.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/function/handlingdatacontroller.dart';
import '../../data/data_source/remote/auth/verifycodesignup_data.dart';

abstract class VerifyCodeSignupController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verfiyCodeSignUp);
}

class VerifyCodeSignupControllerImpl extends VerifyCodeSignupController {
  VerifyCodeSignupData verifyCodeSignupData = VerifyCodeSignupData(Get.find());

  String? email;

  StatusRequest? statusRequest;

  @override
  checkCode() {
    // TODO: implement fotgotPassword
    throw UnimplementedError();
  }

  @override
  goToSuccessSignUp(verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeSignupData.postData(email!, verfiyCodeSignUp);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(Routes.successSignUp);
      } else {
        Get.defaultDialog(
            title: "ُWarning", middleText: "Verify Code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
