import 'package:ecommerce_app/core/class/crud.dart';

import '../../../../link_api.dart';

class VerifyCodeSignupData {
  Crud crud;

  VerifyCodeSignupData(this.crud);

  postData(String email, String verifycode) async {
    var response = await crud.postData(AppLink.verifycodeSignup, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
