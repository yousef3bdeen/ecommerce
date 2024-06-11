import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 0;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route){
    if(myServices.sharedPreferences.getString("onboarding") == "1"){
      return const RouteSettings(name: Routes.login);
    }
  }
}
